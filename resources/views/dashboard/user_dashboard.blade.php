@extends('layouts.'.config('settings.active_layout'))
@php $app_id = config('settings.app_id') @endphp

@section('content')

    <div class="row">





        <div class="col-lg-3 col-md-6 col-sm-6 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="d-flex align-items-center gap-3">
                            <div class="avatar">
                            <span class="avatar-initial rounded-circle bg-label-danger"
                            ><i class="bx bx-location-plus fs-4"></i
                                ></span>
                            </div>
                            <div class="card-info">
                                <form action="{{ route('send.sendNotificationDashboard') }}" method="POST">
                                    @csrf

                                    <input type="hidden" value="{{rand(10,50)}} New University Announcemnet" class="form-control" name="title">
                                    <input type="hidden" value="{{rand(220,890)}} university announcment are here" class="form-control" name="body">



                                    <button type="submit" class="btn btn-danger btn-block">Emergency Alert</button>
                                </form>

                            </div>
                        </div>
                        <div id="profitChart"></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="d-flex align-items-center gap-3">
                            <div class="avatar">
                            <span class="avatar-initial rounded-circle bg-label-success"
                            ><i class="bx bx-camera-movie fs-4"></i
                                ></span>
                            </div>
                            <div class="card-info">
                                    @if($go_live)
                                    <a onClick="MyWindow=window.open(base_url+'zoom/index.html?id={{$go_live->zoom_meeting_id}}&pass={{$go_live->encrypted_password}}&title={{$go_live->topic}}&email={{auth()->user()->email}}&meeting_role=0&user={{auth()->user()->name}}','MyWindow','width=600,height=600'); return false;"  href="javascript:void(0)" style="width: 146px !important;" class="btn btn-success btn-block">Go <br>Live</a>
                                    @endif



                            </div>
                        </div>
                        <div id="profitChart"></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="d-flex align-items-center gap-3">
                            <div class="avatar">
                            <span class="avatar-initial rounded-circle bg-label-primary"
                            ><i class="bx bxs-contact fs-4"></i
                                ></span>
                            </div>
                            <div class="card-info">
                                <a href="javascript:void(0)" class="btn btn-primary btn-block">Contact Numbers</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>


        <div class="col-lg-3 col-md-6 col-sm-6 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="d-flex align-items-center gap-3">
                            <div class="avatar">
                            <span class="avatar-initial rounded-circle bg-label-warning"
                            ><i class="bx bx-plus-medical fs-4"></i
                                ></span>
                            </div>
                            <div class="card-info">
                                <a href="javascript:void(0)" class="btn btn-warning btn-block">Nearest Hospital</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="d-flex align-items-center gap-3">
                            <div class="avatar">
                            <span class="avatar-initial rounded-circle bg-label-info"
                            ><i class="bx bx-building-house fs-4"></i
                                ></span>
                            </div>
                            <div class="card-info">
                                <a href="javascript:void(0)" class="btn btn-info btn-block">Nearest Police Station</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>


        <div class="col-lg-3 col-md-6 col-sm-6 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex justify-content-between">
                        <div class="d-flex align-items-center gap-3">
                            <div class="avatar">
                            <span class="avatar-initial rounded-circle bg-label-danger"
                            ><i class="bx bx-message fs-4"></i
                                ></span>
                            </div>
                            <div class="card-info">
                                <a href="javascript:void(0)" class="btn btn-danger btn-block">Notifications Alert</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>








    <div
            class="modal fade animate__animated fadeIn"
            id="animationModal"
            tabindex="-1"
            aria-hidden="true"
    >
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel5">Create Zoom Meeting</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col mb-3">
                            <label for="nameAnimation" class="form-label">Meeting Agenda</label>
                            <select class="form-control" id="meeting_type">
                                <option value="">Select Meeting Type...</option>
                                <option value="Emergency High Alert">Emergency</option>
                                <option value="Hospital/BHUs">Hospital/BHUs</option>
                                <option value="Edhi">Edhi</option>
                            </select>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col mb-3">
                            <label for="nameAnimation" class="form-label">Meeting Topic</label>
                            <input type="text" id="meeting_title" class="form-control">
                        </div>
                    </div>



                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-label-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary create_new_meeting">Save changes</button>
                </div>
            </div>
        </div>
    </div>
@endsection


@push('scripts')

    <script type="text/javascript">
        function playSound(url) {
            const audio = new Audio(url);
            audio.play();
        }
        $("body").on("click",".create_new_meeting",function () {
            $(this).hide();
            var meeting_type = $("#meeting_type").val();
            var meeting_title = $("#meeting_title").val();
            if(meeting_type == ""){
                alert("Please Select Meeting Type");
                $(".create_new_meeting").show();
                return false;
            }
            if(meeting_title == ""){
                alert("Please Enter Meeting Title");
                $(".create_new_meeting").show();
                return false;
            }
            $.ajax({
                type: 'post',
                url: "{{ route('create-meeting') }}",
                data: {
                    meeting_type: meeting_type,
                    meeting_title: meeting_title,
                    _token: '{{ csrf_token() }}'

                },
                success: function(res) {
                    alert("Meeting Has Been Created Successfully");
                    $(".create_new_meeting").show();
                    window.location.reload();


                }
            });
        });

        $("body").on("click",".send_alert",function () {


            $.ajax({
                type: 'post',
                url: "{{ route('emergency_alert') }}",
                data: {
                    title: "High Alert Notification",
                    message: "Emegency at Polling Station 1 Please all police stations",
                    _token: '{{ csrf_token() }}'

                },
                success: function(res) {
                    alert("Alert Has Been sent");



                }
            });
        });


    </script>


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

                window.onload = function() {
                    initMap();
                    loadBoundaryData();

                    loadHospitals();
                   // loadIcon();
                }

                // Initialize map
                function initMap() {
                    myMap = L.map('map', {
                        center: [33.9905, 71.5345],
                        zoom: 8,
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

                    myMap.addLayer(lyrOSM);
                    objBaseMap = {
                        "Google Map": lyrGoogleMap,
                        "Google Hybrid": lyrGoogleHybrid,
                        "OSM map": lyrOSM
                    }
                    L.control.layers(objBaseMap).addTo(myMap);
                    ctlPan = L.control.pan().addTo(myMap);
                    ctlMousePosition = L.control.mousePosition().addTo(myMap);
                }

                function loadHospitals() {

                    var blueIcon = L.icon.pulse({iconSize:[10,10], color: "blue", fillColor: "blue", animate: false});
                    var redIcon = L.icon.pulse({ color: "red", fillColor: "red", animate: true});
                    new L.geoJson.ajax("{{ URL::to('api/v1/getAllHospitals') }}", {
                        middleware: function(data) {
                            console.log(data);
                            return L.geoJson(data, {

                                onEachFeature: function(feature, layer) {
                                    if (feature.properties.type == 2) {
                                        var mymarker = L.marker([feature.properties.lat,feature.properties.lng], {icon: blueIcon}).addTo(myMap);
                                        mymarker.bindPopup('<p>You are here ' + "ali" + '</p>').openPopup();
                                    }else{
                                        var mymarker = L.marker([feature.properties.lat,feature.properties.lng], {icon: redIcon}).addTo(myMap);

                                    }
                                    mymarker.bindPopup(`
                                            <div style="line-height:0.2rem">
                                            <p><b>Name:</b> ${feature.properties.name}</p>
                                            <p><b>Lat:</b> ${feature.properties.lat}</p>
                                            <p><b>Long:</b> ${feature.properties.lng}</p>
                                            </div>
                                        `).openPopup();
                                }
                            }).addTo(myMap);
                        }
                    });

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

        @push('vendor-style')

            <link rel="stylesheet" href="{{ asset('assets/vendor/libs/select2/select2.css') }}" />
        @endpush

        @push('scripts')
            <script src="{{ asset('assets/vendor/libs/select2/select2.js') }}"></script>
            <script src="{{ asset('assets/js/app-custom.js') }}"></script>
    @endpush
