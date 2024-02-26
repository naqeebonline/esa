@extends('layouts.'.config('settings.active_layout'))
@php $app_id = config('settings.app_id') @endphp

@section('content')



    <div class="row">
        <div class="col-md-12">
            <div class="card mb-4">
                <div class="card-body">
                    <div id="map" class="" style="height: 500px">
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-12">
            <div class="card mb-4">
                <h5 class="card-header">Update Police Mobile</h5>
                <form class="card-body" >
                    @csrf
                    <input type="hidden" name="id" value="{{$data->id}}">
                    <h6 class="fw-normal">1. Police Station</h6>
                    <div class="row g-3">
                        @if(auth()->user()->roles->pluck('name')[0] =="Super Admin")
                        <div class="col-md-3">

                            <label class="form-label" for="multicol-username">District</label>
                            <select class="form-control select2" required name="district_id" id="district_id">
                                <option value="">Select Type....</option>
                                @foreach($district as $key => $value)
                                    <option  <?php echo ($value->id == $data->district_id) ? "selected=selected" : "" ?> value="{{$value->id}}">{{$value->title}}</option>
                                @endforeach

                            </select>
                        </div>
                        @endif

                            <div class="col-md-3">
                                <label class="form-label" for="multicol-username">Circle</label>
                                <select class="form-control select2" required name="circle_id" id="circle_id">
                                    <option value="">Select Circle....</option>
                                    @foreach($circles as $key => $value)
                                        <option  <?php echo ($value->id == $data->circle_id) ? "selected=selected" : "" ?> value="{{$value->id}}">{{$value->name}}</option>
                                    @endforeach

                                </select>
                            </div>

                            <div class="col-md-3">
                                <label class="form-label" for="multicol-username">Police Line (Optional)</label>
                                <select class="form-control select2" name="police_line_id" id="police_line_id">
                                    <option value="">Select Police Line....</option>
                                    @foreach($police_line as $key => $value)
                                        <option  <?php echo ($value->id == $data->police_line_id) ? "selected=selected" : "" ?> value="{{$value->id}}">{{$value->name}}</option>
                                    @endforeach

                                </select>
                            </div>

                            <div class="col-md-3">
                                <label class="form-label" for="multicol-username">Police Station</label>
                                <select class="form-control select2" required name="police_station_id" id="police_station_id">
                                    <option value="">Select Police Station....</option>
                                    @foreach($police_stations as $key => $value)
                                        <option  <?php echo ($value->id == $data->police_station_id) ? "selected=selected" : "" ?> value="{{$value->id}}">{{$value->title}}</option>
                                    @endforeach

                                </select>
                            </div>


                            <div class="col-md-3">
                                <label class="form-label" for="multicol-email">Registration number</label>
                                <div class="input-group">
                                    <input type="text"  class="form-control" value="{{$data->registration_number}}" onkeypress="limitKeypress(event,this.value,100)" required name="registration_number" placeholder="" >
                                </div>
                            </div>

                            <div class="col-md-3">
                                <label class="form-label" for="multicol-username">Vehicle Type</label>
                                <select class="form-control select2" required name="vehicle_type" id="vehicle_type">
                                    <option value="">Select Vehicle Type....</option>
                                    @foreach($vehicle_type as $key => $value)
                                        <option  <?php echo ($value->id == $data->vehicle_type) ? "selected=selected" : "" ?> value="{{$value->id}}">{{$value->name}}</option>
                                    @endforeach

                                </select>
                            </div>

                            <div class="col-md-3">
                                <label class="form-label" for="multicol-first-name">Incharge Name</label>
                                <input type="text" class="form-control" value="{{$data->incharge_name}}" name="incharge_name" onkeypress="limitKeypress(event,this.value,100)" placeholder="">
                            </div>
                            <div class="col-md-3">
                                <label class="form-label" for="multicol-last-name">Contact Details</label>
                                <input type="number" class="form-control" value="{{$data->contact_number}}" onkeypress="limitKeypress(event,this.value,11)" name="contact_number" placeholder="">
                            </div>



                            <div class="col-md-3">
                                <label class="form-label" for="multicol-username">Rank</label>
                                <select class="form-control select2" name="rank" id="rank">
                                    <option value="">Select Rank....</option>
                                    @foreach($rank as $key => $value)
                                        <option  <?php echo ($data->rank == $value['name']) ? "selected=selected" : "" ?> value="{{$value['name']}}">{{$value['name']}}</option>

                                    @endforeach

                                </select>
                            </div>

                        <div class="col-md-3">
                            <label class="form-label" for="multicol-email">Total Strength</label>
                            <div class="input-group">
                                <input type="number"  class="form-control" value="{{$data->strength}}" required name="strength" placeholder="Strength" >
                            </div>
                        </div>



                        <div class="col-md-3">
                            <label class="form-label" for="multicol-email">Lat</label>
                            <div class="input-group">
                                <input type="text"  name="lat" onkeypress="limitKeypress(event,this.value,11)" id="lat" value="{{$data->lat}}" class="form-control" placeholder="lat" >
                            </div>
                        </div>

                        <div class="col-md-3">
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

        




@endsection
@push('vendor-style')

    <link rel="stylesheet" href="{{ asset('assets/vendor/libs/select2/select2.css') }}" />
@endpush

@push('scripts')
    <script src="{{ asset('assets/vendor/libs/select2/select2.js') }}"></script>
    <script src="{{ asset('assets/js/app-custom.js') }}"></script>
            <link rel="stylesheet" href="https://unpkg.com/leaflet-routing-machine@latest/dist/leaflet-routing-machine.css" />
            <script src="https://unpkg.com/leaflet-routing-machine@latest/dist/leaflet-routing-machine.js"></script>
            <script src="{{ asset('assets/js/MovingMarker.js') }}"></script>
            <script src="{{ asset('assets/js/leaflet.polylineDecorator.js') }}"></script>
    <script>
        // var kp_bhus;
        var kp_boundary;
        var myMap;
        var lyrGoogleMap;
        var lyrGoogleHybrid;
        var lyrOSM;
        var crimeLocations;
        current_lat = "{{$data->lat}}";
        current_lng = "{{$data->lng}}";

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
            //loadBoundaryData();
            loadMarker("{{$data->lat}}","{{$data->lng}}");
            getMobileHistory();

        }

        // Initialize map
        function initMap(lat,lng) {
            myMap = L.map('map', {
                center: [34.0151,71.5249],
                zoom: 12,
                zoomControl: true
            });

            //add basemap layer
            lyrGoogleMap = L.tileLayer('http://mts3.google.com/vt/lyrs=m&x={x}&y={y}&z={z}', {
                maxZoom: 22,
                maxNativeZoom: 12
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

        function reinitMap() {
            myMap.off();
            myMap.remove();
            myMap = L.map('map', {
                center: ["{{$district_lat}}","{{$district_lng}}"],
                zoom: 8,
                zoomControl: true
            });

            //add basemap layer         http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}
            lyrGoogleMap = L.tileLayer('http://mts3.google.com/vt/lyrs=m&x={x}&y={y}&z={z}', {
                maxZoom: 22,
                maxNativeZoom: 12
            }); //lyrGoogleMa

            lyrGoogleHybrid = L.tileLayer('http://mts2.google.com/vt/lyrs=y&x={x}&y={y}&z={z}', {
                maxZoom: 22,
                maxNativeZoom: 12
            }); //lyrGoogleHybrid

            lyrOSM = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                maxZoom: 22,
                maxNativeZoom: 12
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

            loadMarker(current_lat,current_lng);
        }

        function loadMarker(lat,lng) {
        }
        function startMarker(lat,lng) {
            var myIcon = L.icon({
                iconUrl: base_url+"markers/sensiteve_ps.png",
                className:"polling_station_marker most_sensitive",
                iconSize: [30,30],

            });
            var mymarker = L.marker([parseFloat(lat).toFixed(6),parseFloat(lng).toFixed(6)], {icon: myIcon}).addTo(myMap);
            mymarker.bindPopup(`
                                            <div style="line-height:0.2rem">
                                            <h6>Police Mobile</h6>

                                            <p class="text_height_map">Starting Point</p>

                                            </div>
                                        `);

        }
        function endMarker(lat,lng) {
            var myIcon = L.icon({
                iconUrl: base_url+"markers/police_mobile.png",
                className:"hospital_marker",
                iconSize: [40, 40],

            });
            var mymarker = L.marker([lat,lng], {icon: myIcon}).addTo(myMap);
            mymarker.bindPopup(`
                                            <div style="line-height:0.2rem">
                                            <h6>Police Mobile</h6>

                                            <p class="text_height_map"><b>Registration#:</b> "{{$data->registration_number}}"</p>
                                            <p class="text_height_map"><b>Incharge Name:</b> "{{$data->incharge_name}}"</p>
                                            <p class="text_height_map"><b>Incharge Name:</b> "{{$data->contact_number}}"</p>
                                            <p class="text_height_map"><b>Last Update Time:</b> "{{date("d-m-Y h:i A",strtotime($data->updated_at))}}"</p>

                                            </div>
                                        `);

        }



        function getMobileHistory() {
            reinitMap();
            $.ajax({
                url: '{{ route("getMobileHistory") }}', // Replace with your actual URL
                type: 'post',
                data: {
                    mobile_id:'{{$data->id}}',
                    police_station_id:$("#police_station_id").val(),
                    districts:$("#search_district").val(),
                    _token: '{{ csrf_token() }}'

                },
                success: function (response) {
                    var blackIcon = L.icon.pulse({iconSize:[2,2], color: "#ffff",   animate: false});
                    $("#police_mobile_checkbox_count").text(response.data.length);

                    var latlngs = [];
                     newlngs = [];
                    var waypoints = [];
                    $.each(response.data, function (index, item) {

                        if(item.lat != null && item.lng != null){
                            latlngs.push([item.lat, item.lng]);
                            newlngs.push([parseFloat(item.lat), parseFloat(item.lng)]);


                            var myIcon = L.icon({
                                iconUrl: 'https://w7.pngwing.com/pngs/5/851/png-transparent-marker-map-icon-car-location-automobile-vehicle-target-design.png',
                                iconSize: [10, 10],
                                className:"police_mobile_marker"

                            });
                            /* mymarker = L.marker([item.lat,item.lng], {icon: blackIcon}).addTo(myMap);
                            mymarker.bindPopup(`
                                            <div style="line-height:0.2rem">
                                            <h6>Police Mobile</h6>

                                            <p class="text_height_map"><b>Registration#:</b> "{{$data->registration_number}}"</p>
                                            <p class="text_height_map"><b>Incharge Name:</b> "{{$data->incharge_name}}"</p>
                                            <p class="text_height_map"><b>Incharge Name:</b> "{{$data->contact_number}}"</p>
                                            <p class="text_height_map"><b>Date Time:</b> ${item.date_time}</p>

                                            </div>
                                        `);*/
                        }



                    });

                    var count = latlngs.length;
                    var start_point = latlngs[0];
                    var start_point2 = latlngs[5];
                    var end_point = latlngs[count - 1];

                    my_polyline = L.polyline(latlngs, {color: 'red'}).addTo(myMap);
                    myMap.fitBounds(my_polyline.getBounds());

                    var count = latlngs.length;
                   var start_point = latlngs[0];
                    startMarker(start_point[0],start_point[1]);

                   var end_point = latlngs[count - 1];
                   // endMarker(end_point[0],end_point[1]);


                /* Moving marker begin here */
                    var myicon = L.icon({
                        iconUrl: base_url+"markers/police_mobile.png",
                       // iconUrl: "https://static.thenounproject.com/png/331565-200.png",
                        className:"my_car_location",

                        iconSize:[30,30]
                    });

                    marker1 = L.Marker.movingMarker(latlngs, 1200,{autostart: true,icon:myicon})

                        .addTo(myMap);

                    marker1.bindPopup(`
                                            <div style="line-height:0.2rem">
                                            <h6>Police Mobile</h6>

                                            <p class="text_height_map"><b>Registration#:</b> "{{$data->registration_number}}"</p>
                                            <p class="text_height_map"><b>Incharge Name:</b> "{{$data->incharge_name}}"</p>
                                            <p class="text_height_map"><b>Incharge Name:</b> "{{$data->contact_number}}"</p>
                                            <p class="text_height_map"><b>Last Update Time:</b> "<span class='last_updated_at'>{{date("d-m-Y h:i A",strtotime($data->updated_at))}}</span>"</p>

                                            </div>
                                        `).openPopup();
                    marker1.start();






                    //marker1.moveTo([44.65302, 39.99023], 200000);


                }
            });
        }
        i = 1;
        function moveToNewLocation(){

            if (marker1.isEnded()) {
                if(i==1){
                    my_polyline.addLatLng([33.97912, 71.31844]);
                    marker1.moveTo([33.97912, 71.31844], 8000);
                    newlngs.push([33.97912, 71.31844]);
                    drawDirections();



                }
                else if(i <= 5){
                    my_polyline.addLatLng([33.8894, 71.2732]);
                    marker1.moveTo([33.8894, 71.2732], 8000);
                    newlngs.push([33.8894, 71.2732]);
                    drawDirections();

                }
                else{
                    my_polyline.addLatLng([34.0209, 71.4911]);
                    marker1.moveTo([34.0209, 71.4911], 8000);
                    newlngs.push([34.0209, 71.4911]);
                    drawDirections();

                }


                /*$.ajax({
                    url: '{{ route("getThisMobileLocation") }}', // Replace with your actual URL
                    type: 'post',
                    data: {
                        mobile_id:'{{$data->id}}',
                        police_station_id:$("#police_station_id").val(),
                        districts:$("#search_district").val(),
                        _token: '{{ csrf_token() }}'

                    },
                    success: function (response) {

                        var res = response.data;
                        my_polyline.addLatLng([res.lat, res.lng]);
                        marker1.moveTo([res.lat, res.lng], 8000);
                        newlngs.push([parseFloat(res.lat), parseFloat(res.lng)]);
                        drawDirections();
                    }
                });*/
            }

            i++;
        }

        function drawDirections(){

            var pathPattern = L.polylineDecorator(
                newlngs,
                {
                    patterns: [
                        { offset: 0, repeat: 100, symbol: L.Symbol.dash({pixelSize: 2, pathOptions: {color: '#000', weight: 1, opacity: 0.1}}) },
                        { offset: '0%', repeat: 100, symbol: L.Symbol.marker({rotate: true, markerOptions: {
                                    icon: L.icon({
                                        iconUrl: base_url+"markers/car_go.png",
                                        className:"my_live_car",

                                        iconAnchor: [16, 16]
                                    })
                                }})}
                    ]
                }
            ).addTo(myMap);
        }

        setInterval(moveToNewLocation, 6000);

       // setInterval(getMobileHistory, 300000000);






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