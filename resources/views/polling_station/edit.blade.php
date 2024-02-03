@extends('layouts.'.config('settings.active_layout'))
@php $app_id = config('settings.app_id') @endphp

@section('content')
    <div class="row">
        <div class="col-md-6">
            <div class="card mb-4">
                <h5 class="card-header"> Polling Station Info</h5>
                <form class="card-body" method="post" action="{{route('update.polling.station')}}">
                    @csrf
                    <h6 class="fw-normal">1. Add Polling Station</h6>
                    <div class="row my-3">

                        <div class="col-md-6">
                            <input type="hidden" value="{{$data->id}}" name="id">
                            <label class="form-label" for="multicol-username">Police Station</label>
                            <select class="form-control select2" required name="police_station_id">
                                <option value="">Select Type....</option>
                                @foreach($police_station as $key => $value)
                                    <option  <?php echo ($value->id == $data->police_station_id) ? "selected=selected" : "" ?> value="{{$value->id}}">{{$value->title}}</option>
                                @endforeach

                            </select>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label" for="multicol-username">Polling Station Name</label>
                            <input type="text" class="form-control" value="{{$data->polling_station_name}}" name="polling_station_name" placeholder="Peshawar">
                        </div>

                    </div>

                    <div class="row my-3">



                        <div class="col-md-6">
                            <label class="form-label" for="multicol-username">Sensitivity</label>
                            <select class="form-control select2" required name="sensitivity">
                                <option value="">Select Type....</option>
                                @foreach($sensitivity as $key => $value)
                                    <option  <?php echo ($value->id == $data->sensitivity) ? "selected=selected" : "" ?> value="{{$value->id}}">{{$value->title}}</option>
                                @endforeach

                            </select>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label" for="multicol-email">Distance From Police Station (KM) </label>
                            <div class="input-group">
                                <input type="number"  name="distance_from_ps" value="{{$data->distance_from_ps}}" class="form-control" placeholder="" >
                            </div>
                        </div>

                    </div>

                    <div class="row my-3">
                        <div class="col-md-6">
                            <label class="form-label" for="multicol-username">Number Of Male Booth <label>
                                    <input type="text" name="number_of_male_booth" value="{{$data->number_of_male_booth}}" class="form-control" placeholder="">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label" for="multicol-email">Number Of Female Booth</label>
                            <div class="input-group">
                                <input type="text" name="number_of_female_booth" value="{{$data->number_of_female_booth}}"  class="form-control" placeholder="" >
                            </div>
                        </div>

                    </div>

                    <div class="row my-3">
                        <div class="col-md-6">
                            <label class="form-label" for="multicol-username">Registered Voters Male <label>
                                    <input type="text" name="male_voters" value="{{$data->male_voters}}" class="form-control" placeholder="">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label" for="multicol-email">Registered Voters Female </label>
                            <div class="input-group">
                                <input type="text" name="female_voters" value="{{$data->female_voters}}"  class="form-control" placeholder="" >
                            </div>
                        </div>

                    </div>

                    <div class="row my-3">
                        <div class="col-md-6">
                            <label class="form-label" for="multicol-username">Internet Availability<label>
                                    <select name="internet" class="form-control" required id="internet">
                                        <option value="">Select Option....</option>
                                        <option {{($data->internet == "yes") ? "selected=selected" : ""}} value="yes">Yes</option>
                                        <option {{($data->internet == "no") ? "selected=selected" : ""}} value="no">No</option>
                                    </select>
                        </div>


                    </div>

                    <div class="row my-3">
                        <div class="col-md-6">
                            <label class="form-label" for="multicol-email">Incharge Name</label>
                            <div class="input-group">
                                <input type="text" name="incharge_name" value="{{$data->incharge_name}}" class="form-control" placeholder="" >
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label" for="multicol-email">Incharge Rank</label>
                            <div class="input-group">
                                <input type="text" name="incharge_rank" value="{{$data->incharge_rank}}" class="form-control" placeholder="" >
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label" for="multicol-email">Incharge Contact</label>
                            <div class="input-group">
                                <input type="text" name="incharge_contact" onkeypress="limitKeypress(event,this.value,11)"  value="{{$data->incharge_contact}}" class="form-control" placeholder="" >
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label" for="multicol-email">Lat</label>
                            <div class="input-group">
                                <input type="text"  name="lat" id="lat" onkeypress="limitKeypress(event,this.value,11)" value="{{$data->lat}}" class="form-control" placeholder="lat" >
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label" for="multicol-email">Long</label>
                            <div class="input-group">
                                <input type="text"  name="lng" id="lng" onkeypress="limitKeypress(event,this.value,11)" value="{{$data->lng}}"  class="form-control" placeholder="long" >
                            </div>
                        </div>

                    </div>


                    <hr class="my-4 mx-n4">
                    <h6 class="fw-normal">2. Deployed Staff</h6>

                    <div class="row my-3">
                        <div class="col-md-6">
                            <label class="form-label" for="multicol-first-name"> Police Station</label>
                            <input type="number" name="total_police" value="{{$data->total_police}}" class="form-control" >
                        </div>
                        <div class="col-md-6">
                            <label class="form-label" for="multicol-last-name">RRF</label>
                            <input type="number" name="rrf" value="{{$data->rrf}}" class="form-control" placeholder="">
                        </div>

                    </div>

                    <div class="row my-3">
                        <div class="col-md-6">
                            <label class="form-label" for="multicol-last-name">QRF</label>
                            <input type="number" name="qrf" value="{{$data->qrf}}" class="form-control" placeholder="">
                        </div>

                        <div class="col-md-6">
                            <label class="form-label" for="multicol-last-name">FRP</label>
                            <input type="number" name="frp" value="{{$data->frp}}" class="form-control" placeholder="">
                        </div>


                    </div>

                    <div class="row my-3">
                        <div class="col-md-6">
                            <label class="form-label" for="multicol-last-name">Frontier Constabulary</label>
                            <input type="number" name="frontier_constabulary" value="{{$data->frontier_constabulary}}" class="form-control" placeholder="">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label" for="multicol-first-name"> Pak Army</label>
                            <input type="number" name="pak_army" value="{{$data->pak_army}}" class="form-control" >
                        </div>


                    </div>

                    <div class="row my-3">

                        <div class="col-md-6">
                            <label class="form-label" for="multicol-last-name">Reserves</label>
                            <input type="number" name="reserves" value="{{$data->reserves}}" class="form-control" placeholder="">
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
                                            <p><b>Name:</b>{{$data->polling_station_name}}</p>

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
