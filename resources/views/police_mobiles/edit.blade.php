@extends('layouts.'.config('settings.active_layout'))
@php $app_id = config('settings.app_id') @endphp

@section('content')



    <div class="row">
        <div class="col-md-6">
            <div class="card mb-4">
                <h5 class="card-header">Update Police Mobile</h5>
                <form class="card-body" method="post" action="{{route('update.police.mobile')}}">
                    @csrf
                    <input type="hidden" name="id" value="{{$data->id}}">
                    <h6 class="fw-normal">1. Police Station</h6>
                    <div class="row g-3">
                        @if(auth()->user()->roles->pluck('name')[0] =="Super Admin")
                        <div class="col-md-6">

                            <label class="form-label" for="multicol-username">District</label>
                            <select class="form-control select2" required name="district_id" id="district_id">
                                <option value="">Select Type....</option>
                                @foreach($district as $key => $value)
                                    <option  <?php echo ($value->id == $data->district_id) ? "selected=selected" : "" ?> value="{{$value->id}}">{{$value->title}}</option>
                                @endforeach

                            </select>
                        </div>
                        @endif

                            <div class="col-md-6">
                                <label class="form-label" for="multicol-username">Circle</label>
                                <select class="form-control select2" required name="circle_id" id="circle_id">
                                    <option value="">Select Circle....</option>
                                    @foreach($circles as $key => $value)
                                        <option  <?php echo ($value->id == $data->circle_id) ? "selected=selected" : "" ?> value="{{$value->id}}">{{$value->name}}</option>
                                    @endforeach

                                </select>
                            </div>

                            <div class="col-md-6">
                                <label class="form-label" for="multicol-username">Police Station</label>
                                <select class="form-control select2" required name="police_station_id" id="police_station_id">
                                    <option value="">Select Police Station....</option>
                                    @foreach($police_stations as $key => $value)
                                        <option  <?php echo ($value->id == $data->police_station_id) ? "selected=selected" : "" ?> value="{{$value->id}}">{{$value->title}}</option>
                                    @endforeach

                                </select>
                            </div>


                            <div class="col-md-6">
                                <label class="form-label" for="multicol-email">Registration number</label>
                                <div class="input-group">
                                    <input type="text"  class="form-control" value="{{$data->registration_number}}" onkeypress="limitKeypress(event,this.value,100)" required name="registration_number" placeholder="" >
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label class="form-label" for="multicol-username">Vehicle Type</label>
                                <select class="form-control select2" required name="vehicle_type" id="vehicle_type">
                                    <option value="">Select Vehicle Type....</option>
                                    @foreach($vehicle_type as $key => $value)
                                        <option  <?php echo ($value->id == $data->vehicle_type) ? "selected=selected" : "" ?> value="{{$value->id}}">{{$value->name}}</option>
                                    @endforeach

                                </select>
                            </div>

                            <div class="col-md-6">
                                <label class="form-label" for="multicol-first-name">Incharge Name</label>
                                <input type="text" class="form-control" value="{{$data->incharge_name}}" name="incharge_name" onkeypress="limitKeypress(event,this.value,100)" placeholder="">
                            </div>
                            <div class="col-md-6">
                                <label class="form-label" for="multicol-last-name">Contact Details</label>
                                <input type="number" class="form-control" value="{{$data->contact_number}}" onkeypress="limitKeypress(event,this.value,11)" name="contact_number" placeholder="">
                            </div>

                            <div class="col-md-6">
                                <label class="form-label" for="multicol-last-name">Rank</label>
                                <input type="text" class="form-control" value="{{$data->rank}}" onkeypress="limitKeypress(event,this.value,11)" name="rank" placeholder="">
                            </div>

                        <div class="col-md-6">
                            <label class="form-label" for="multicol-email">Total Strength</label>
                            <div class="input-group">
                                <input type="number"  class="form-control" value="{{$data->strength}}" required name="strength" placeholder="Strength" >
                            </div>
                        </div>



                        <div class="col-md-6">
                            <label class="form-label" for="multicol-email">Lat</label>
                            <div class="input-group">
                                <input type="text"  name="lat" onkeypress="limitKeypress(event,this.value,11)" id="lat" value="{{$data->lat}}" class="form-control" placeholder="lat" >
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label" for="multicol-email">Long</label>
                            <div class="input-group">
                                <input type="text"  name="lng" onkeypress="limitKeypress(event,this.value,11)" id="lng" value="{{$data->lng}}"  class="form-control" placeholder="long" >
                            </div>
                        </div>

                    </div>



                    <div class="pt-4">
                        <button type="submit" class="btn btn-primary me-sm-3 me-1">Submit</button>
                        <button type="reset" class="btn btn-label-secondary">Cancel</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="col-md-6">
            <div class="card mb-4">
                <div class="card-body">
                    <div id="map" class="" style="height: 500px">
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
            var ProvinceID = $('#province_id').val();


            $.ajax({
                url: '{{ route("getCircles") }}/' + selectedDistrict, // Replace with your actual URL
                method: 'GET',
                success: function (response) {

                    var psOptions = '<option value="">Select Circle</option>';
                    $.each(response.data, function (index, item) {
                        psOptions += '<option value="' + item.id + '">' + item.name + '</option>';
                    });
                    $("#circle_id").html(psOptions);
                }
            });




        });

        $("body").on("change","#search_district",function (e) {
            search_district_name = $(this).val();
            loadBoundaryData();
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
            initMap("{{$data->latitude}}","{{$data->longitude}}");
            loadBoundaryData();
            loadMarker("{{$data->latitude}}","{{$data->longitude}}");
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