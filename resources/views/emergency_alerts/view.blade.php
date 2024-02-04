@extends('layouts.'.config('settings.active_layout'))
@php $app_id = config('settings.app_id') @endphp

@section('content')



    <div class="row">
        <div class="col-md-8">
            <div class="card mb-4">
                <h5 class="card-header">View Emergency Alert</h5>
                <form class="card-body" method="post" >


                    <div class="row g-3">

                        <div class="col-md-12">
                            <label class="form-label" for="multicol-email">Type</label>
                            <div class="input-group">
                                 <b>{{$data->type}}</b>
                            </div>
                        </div>


                        <div class="col-md-12">
                            <label class="form-label" for="multicol-email">Message</label>
                            <div class="input-group">
                                <input type="text"  class="form-control" value="{{$data->message}}" onkeypress="limitKeypress(event,this.value,254)" required name="message" placeholder="" >
                            </div>
                        </div>

                        <div class="col-md-12">
                            @if($data->audio)
                                <audio controls autoplay>
                                    <source src="{{$data->audio}}" type="audio/ogg">
                                    <source src="{{$data->audio}}" type="audio/mpeg">

                                </audio>
                            @endif


                        </div>

                        <div class="col-md-12">
                            @if($data->video)
                                <video width="400" controls>
                                    <source src="{{$data->video}}" type="video/mp4">
                                    <source src="{{$data->video}}" type="video/ogg">

                                </video>
                            @endif
                        </div>

                        <div class="col-md-12">
                             @if($data->attachment)
                                 <img class="img img-thumbnail" src="{{$data->attachment}}">
                             @endif
                        </div>

                    </div>




                </form>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card mb-4">
                <h5 class="card-header">Alert Status</h5>
                <div class="card-body" method="post" >


                    <div class="row g-3">


                        <div class="col-md-12">
                            <label class="form-label" for="multicol-email">Remarks</label>
                            <select class="form-control" id="alert_status">
                                <option value="">Select Status...</option>
                                <option {{ ($data->alert_status == "Pending") ? "selected=selected" : ""  }} value="Pending">Pending</option>
                                <option {{ ($data->alert_status == "In Process") ? "selected=selected" : ""  }} value="In Process">In Process</option>
                                <option {{ ($data->alert_status == "Resolved") ? "selected=selected" : ""  }} value="Resolved">Resolved</option>
                            </select>
                        </div>

                        <div class="col-md-12">
                            <label class="form-label" for="multicol-email">Remarks</label>
                            <div class="input-group">
                                <textarea id="remarks" class="form-control" rows="7">{{$data->remarks ?? ""}}</textarea>

                            </div>
                        </div>


                        <div class="col-md-12">
                            <a class="btn btn-primary" style="color:white" id="update_status">Update Status</a>
                        </div>








                    </div>




                </div>
            </div>
        </div>





@endsection
@push('vendor-style')

    <link rel="stylesheet" href="{{ asset('assets/vendor/libs/select2/select2.css') }}" />
@endpush

@push('scripts')
    <script src="{{ asset('assets/vendor/libs/select2/select2.js') }}"></script>
    <script src="{{ asset('assets/js/app-custom.js') }}"></script>

    <script>
        // var kp_bhus;
        var kp_boundary;
        var myMap;
        var lyrGoogleMap;
        var lyrGoogleHybrid;
        var lyrOSM;
        var crimeLocations;

        $('#district_id').on('change', function () {
            var selectedDistrict = $(this).val();

            $.ajax({
                url: '{{ route("getPoliceStations") }}/' + selectedDistrict, // Replace with your actual URL
                method: 'GET',
                success: function (response) {

                    var psOptions = '<option value="">Select Police Station</option>';
                    $.each(response.data, function (index, item) {
                        psOptions += '<option value="' + item.id + '">' + item.title + '</option>';
                    });
                    $("#police_station_id").html(psOptions);
                }
            });


        });

        $("body").on("change","#search_district",function (e) {
            search_district_name = $(this).val();
            loadBoundaryData();
        });

        $("body").on("click","#update_status",function (e) {
             var alert_status = $("#alert_status").val();
             var remarks = $("#remarks").val();
             if(alert_status == "" || remarks == ""){
                 alert("Please enter complete details");
                 return false;
             }

            $.ajax({
                type: 'post',
                url: "{{ route('updateAlertStatus') }}",
                data: {
                    id: "{{$data->id}}",
                    alert_status:alert_status,
                    remarks:remarks,
                    _token: '{{ csrf_token() }}'

                },
                success: function(res) {
                    //user_table.dataTable.reload();
                    alert("Alert Status updated successfully");
                    window.location.reload();
                }
            });

        });

        $("body").on("blur","#lat",function (e) {
            var lat = $("#lat").val();
            var long = $("#lng").val();
            if(lat !="" && long !=""){
                myMap.off();
                myMap.remove();
                initMap(lat,long);
                loadMarker(lat,long);
            }


        });

        $("body").on("blur","#lng",function (e) {
            var lat = $("#lat").val();
            var long = $("#lng").val();
            if(lat !="" && long !=""){
                myMap.off();
                myMap.remove();
                initMap(lat,long);
                loadMarker(lat,long);
            }
        });



        window.onload = function() {
            initMap("{{$data->lat}}","{{$data->lng}}");
            loadBoundaryData();
            loadMarker("{{$data->lat}}","{{$data->lng}}");
            // loadIcon();
        }

        // Initialize map
        function initMap(lat,lng) {
            myMap = L.map('map', {
                center: [lat,lng],
                zoom: 14,
                zoomControl: true
            });

            //add basemap layer
            lyrGoogleMap = L.tileLayer('http://mts3.google.com/vt/lyrs=m&x={x}&y={y}&z={z}', {
                maxZoom: 22,
                maxNativeZoom: 18
            }); //lyrGoogleMa

            lyrGoogleHybrid = L.tileLayer('http://mts2.google.com/vt/lyrs=y&x={x}&y={y}&z={z}', {
                maxZoom: 22,
                maxNativeZoom: 18
            }); //lyrGoogleHybrid

            lyrOSM = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                maxZoom: 22,
                maxNativeZoom: 18
            }); //OSM

            myMap.addLayer(lyrGoogleMap);
            objBaseMap = {
                "Google Map": lyrGoogleMap,
                "Google Hybrid": lyrGoogleHybrid,
                "OSM map": lyrOSM
            }
            L.control.layers(objBaseMap).addTo(myMap);
            ctlPan = L.control.pan().addTo(myMap);
            ctlMousePosition = L.control.mousePosition().addTo(myMap);
        }

        function loadMarker(lat,lng) {

            var redIcon = L.icon.pulse({iconSize:[14,14], color: "red", fillColor: "blue", animate: true});
            var mymarker = L.marker([lat,lng], {icon: redIcon}).addTo(myMap);
            mymarker.bindPopup(`
                                            <div style="line-height:0.2rem">
                                            <p><b>Name:</b>{{$data->name}}</p>

                                            </div>
                                        `);

        }






        search_district_name = '';
        function loadBoundaryData() {

            if (myMap.hasLayer(kp_boundary)) {
                myMap.removeLayer(kp_boundary);

            }
            kp_boundary = L.geoJson.ajax('theme/plugins/leaflet/boundary_data/kp_district_boundary.geojson',{filter: districts}).bindPopup(function(kp_boundary) {
                return kp_boundary.feature.properties.DISTRICT;
            }).addTo(myMap);
        }

        function districts(feature){

            if (feature.properties.DISTRICT === search_district_name) {
                return true;
            }
        }
    </script>
@endpush