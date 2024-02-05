@extends('layouts.'.config('settings.active_layout'))
@php $app_id = config('settings.app_id') @endphp

@section('content')
    <div class="row">
        <div class="col-md-6">
            <div class="card mb-4">
                <h5 class="card-header"> Update Health Facility</h5>
                <form class="card-body" method="post" action="{{route('update.hospital')}}">
                    @csrf
                    <div class="row my-3">
                        <div class="col-md-12">
                            <input type="hidden" name="id" value="{{$data->id}}">
                            <label class="form-label" for="multicol-username">Police Station</label>
                           <select class="form-control select2" required name="police_station_id">
                               <option value="">Select Type....</option>
                             @foreach($police_station as $key => $value)
                               <option  <?php echo ($value->id == $data->police_station_id) ? "selected=selected" : "" ?> value="{{$value->id}}">{{$value->title}}</option>
                              @endforeach

                           </select>
                        </div>

                        <div class="col-md-12">
                            <label class="form-label" for="multicol-username">Type</label>
                           <select class="form-control select2" name="type" required>
                               <option value="">Select Facility Type....</option>
                               @foreach($facility_type as $key => $value)
                                   <option  <?php echo ($value->id == $data->type) ? "selected=selected" : "" ?> value="{{$value->id}}">{{$value->name}}</option>
                               @endforeach
                           </select>
                        </div>
                        <div class="col-md-12">
                            <label class="form-label" for="multicol-email">Name</label>
                            <div class="input-group">
                                <input type="text"name="name" value="{{$data->name}}" class="form-control" required placeholder="Enter Name..." >
                            </div>
                        </div>

                        <div class="col-md-12">
                            <label class="form-label" for="multicol-email">Contact Number</label>
                            <div class="input-group">
                                <input type="number"  name="contact_number"  value="{{$data->contact_number}}" required class="form-control" placeholder="Contact number..." >
                            </div>
                        </div>

                        <div class="col-md-12">
                            <label class="form-label" for="multicol-email">Lat</label>
                            <div class="input-group">
                                <input type="text"  name="lat" id="lat" value="{{$data->lat}}"  class="form-control" placeholder="lat" >
                            </div>
                        </div>

                        <div class="col-md-12">
                            <label class="form-label" for="multicol-email">Long</label>
                            <div class="input-group">
                                <input type="text"  name="lng" id="lng" value="{{$data->lng}}"  class="form-control" placeholder="long" >
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
            findNearest();
            // loadIcon();
        }

        function findNearest() {

            $.ajax({
                url: '{{ route("findNearestResource") }}', // Replace with your actual URL
                method: 'post',
                data: {

                    lat:"{{$data->lat}}",
                    lng:"{{$data->lng}}",
                    _token: '{{ csrf_token() }}'

                },
                success: function (response) {


                    $.each(response.police_station, function (index, item) {

                        var myIcon = L.icon({
                            iconUrl: base_url+"markers/ps.png",
                            className:"police_stations_marker",
                            iconSize: [40, 40],

                        });
                        var mymarker = L.marker([item.latitude,item.longitude], {icon: myIcon}).addTo(myMap);
                        mymarker.bindPopup(`
                                           <div style="line-height:0.2rem">
                                            <h6>Police Stations</h6>
                                            <p class="text_height_map"><b>Name:</b> ${item.title}</p>
                                            <p class="text_height_map"><b>Contact:</b> ${item.ps_contact_number}</p>
                                            <p class="text_height_map"><b>Distanse:</b> ${parseFloat(item.distance).toFixed(2)} Km</p>
                                            </div>
                                        `);



                    });


                    $.each(response.hospitals, function (index, item) {

                        var myIcon = L.icon({
                            iconUrl: base_url+"markers/hospital.png",
                            className:"police_stations_marker",
                            iconSize: [40, 40],

                        });
                        var mymarker = L.marker([item.lat,item.lng], {icon: myIcon}).addTo(myMap);
                        mymarker.bindPopup(`
                                           <div style="line-height:0.2rem">
                                            <h6>Health Facility</h6>
                                            <p class="text_height_map"><b>Name:</b> ${item.name}</p>
                                            <p class="text_height_map"><b>Contact:</b> ${item.contact_number}</p>
                                            <p class="text_height_map"><b>Distanse:</b> ${parseFloat(item.distance).toFixed(2)} Km</p>
                                            </div>
                                        `);



                    });

                    $.each(response.police_mobile, function (index, item) {

                        var myIcon = L.icon({
                            iconUrl: base_url+"markers/police_mobile.png",
                            className:"police_stations_marker",
                            iconSize: [40, 40],

                        });
                        var mymarker = L.marker([item.lat,item.lng], {icon: myIcon}).addTo(myMap);
                        mymarker.bindPopup(`
                                           <div style="line-height:0.2rem">
                                            <h6>Police Mobile</h6>
                                            <p class="text_height_map"><b>Reg #:</b> ${item.registration_number}</p>
                                            <p class="text_height_map"><b>Contact:</b> ${item.contact_number}</p>
                                            <p class="text_height_map"><b>Distanse:</b> ${parseFloat(item.distance).toFixed(2)} Km</p>
                                            </div>
                                        `);



                    });
                }
            });
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