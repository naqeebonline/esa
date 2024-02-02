@extends('layouts.'.config('settings.active_layout'))
@php $app_id = config('settings.app_id') @endphp

@push('stylesheets')
    <style>
        .table > :not(caption) > * > * {padding: 5px;}

        html,
        body,
        #map_canvas {
            height: 100%;
            width: 100%;
            margin: 0px;
            padding: 0px
        }
    </style>

    <link rel="stylesheet" href="{{ asset('assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css') }}" />
    <link rel="stylesheet" href="{{ asset('assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css') }}" />
@endpush

@section('content')

    <div class="row">
        <div class="col-12">

            <!-- Traffic sources -->
            <div class="card">
                <div class="card-header header-elements-inline">
                    <h6 class="card-title pb-0 mb-0">{{ $title }}</h6>
                    <button
                            type="button"
                            class="btn btn-success m-1 float-end"
                            data-bs-toggle="modal"
                            data-bs-target="#createMeetingModel"
                            style="width: 200px; color: white"
                    >
                        Create New Meeting
                    </button>
{{--                    <div class="header-elements">--}}
{{--                        <div class="form-check form-check-right form-check-switchery form-check-switchery-sm">--}}

{{--                            --}}{{--<label class="form-check-label">--}}
{{--                                Live update:--}}
{{--                                <input type="checkbox" class="form-input-switchery" checked data-fouc>--}}
{{--                            </label>--}}
{{--                        </div>--}}
{{--                    </div>--}}
                </div>

                <div class="card-body">

                    <div class="row">


                        <div class="col-12">

                            <div class="table-responsive" style="min-height: 200px">


                                <table id="users-list" class="table table-striped data_mf_table table-condensed overflow-auto" >

                                    <thead>
                                    <tr>
{{--                                        <th>#</th>--}}
                                        <th style="width: 25%">Meeting ID</th>
                                        <th style="width: 10%">Start Meeting</th>
                                        <th  style="width: 15%">Topic</th>
                                        <th style="width: 15%">Agenda</th>


                                        <th style="width: 30%">Share with</th>
                                        <th style="width: 30%">Link For</th>
                                        <th style="width: 10%">Status</th>

                                        <th  style="width: 10%">Action</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    @foreach($data as $key => $value)
                                        <tr>

                                            <td>
                                                Start: <span style="color: green;">{{date("d-m-Y h:i A",strtotime($value->start_time))}}</span><br>
                                                End Time: <span style="color: red;">{{date("d-m-Y h:i A",strtotime($value->end_time))}}</span><br>

                                                MeetingID:{{$value->zoom_meeting_id}}
                                            </td>

                                            <td>


                                                {{--<a target="_blank" href="{{$value->start_url}}" class="bx bx-video" style="color: red"></a>--}}

                                                <a onClick="MyWindow=window.open(base_url+'zoom/index.html?id={{$value->zoom_meeting_id}}&pass={{$value->encrypted_password}}&title={{$value->topic}}&email={{auth()->user()->email}}&meeting_role=1&user={{auth()->user()->name}}','MyWindow','width=600,height=600'); return false;"   class="bx bx-video" style="color: green"></a>

                                                <code id="copy{{$value->id}}" style="display: none">
                                                    <u>Topic:{{$value->topic."\n"}}</u>
                                                    <u>Time:{{$value->created_at."\n"}}</u>
                                                    <u>Meeting:{{$value->join_url."\n"}}</u>
                                                    <u> Meeting ID: {{$value->zoom_meeting_id."\n"}}</u><br>
                                                    <br>Password: {{$value->encrypted_password}}
                                                </code>
                                                <i class="bx bx-clipboard"  href="{{$value->join_url}}" onclick="copyToClipboard('#copy{{$value->id}}')" >

                                                </i>
                                            </td>


                                            <td>{{$value->topic}}</td>
                                            <td>{{$value->agenda}}</td>



                                            <td>

                                                @foreach($value->meetingUsers as $key2 => $v2)
                                                    <code>{{$v2->users?->name ?? ""}}</code>,
                                                 @endforeach
                                            </td>
                                            <td>
                                                {{$value->live_link_for ?? ""}}
                                            </td>

                                            <td>
                                                @if(date("Ymdhis",strtotime($value->end_time)) - date("Ymdhis")  > 0 )
                                                    <button type="button" class="btn btn-xs btn-success">Active</button>
                                                @else
                                                    <button type="button" class="btn btn-xs btn-danger">Expired</button>
                                                @endif
                                            </td>

                                            <td>
                                                <a  class="btn btn-primary assign_to_user" data-id="{{$value->zoom_meeting_id}}"><i class="tf-icons bx bx-wrench"></i></a>

                                                @if(count($value->meetingUsers) > 0)
                                                <a  class="btn btn-danger generate_push" data-id="{{$value->zoom_meeting_id}}"><i class="tf-icons bx bx-play"></i></a>
                                                @endif

                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /traffic sources -->
        </div>
    </div>


    <div class="modal fade animate__animated fadeIn" id="animationModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel5">Share with Users</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col mb-3">
                            <label for="nameAnimation" class="form-label">District</label>
                            <select class="form-control select2" id="district_id" multiple="multiple">
                                <option value="">Select District...</option>
                                @foreach($districts as $key => $value)
                                <option value="{{$value->id}}">{{$value->title}}</option>
                                @endforeach

                            </select>
                        </div>
                    </div>



                    <div class="row">
                        <div class="col mb-3">

                            <label>Circle</label>
                            <select class="form-control select2" name="circle_id" id="circle_id" multiple="multiple">

                            </select>

                        </div>
                    </div>

                    <div class="row">
                        <div class="col mb-3">

                            {!! Form::label('Police Station', 'Police Station  ', ['class' => 'form-label']) !!}
                            {!! Form::select('police_station_id', [],  null, ['class' => 'form-control select2','id'=>"police_station_id","multiple"=>"multiple"]) !!}

                        </div>
                    </div>

                    <div class="row">
                        <div class="col mb-3">
                            <label for="police_station_users" class="form-label">Police Station Users</label>

                            {!! Form::select('police_station_users[]', [], null, ['class' => 'form-select select2', 'id' => 'police_station_users', 'multiple' => 'multiple']) !!}

                        </div>
                    </div>

                    <div class="row">
                        <div class="col mb-3">
                            <label for="nameAnimation" class="form-label">Polling Station Users</label>
                            <select class="form-control select2" id="polling_station_user" multiple="multiple">
                            </select>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col mb-3">
                            <label for="nameAnimation" class="form-label">Police Mobile Users</label>
                            <select class="form-control select2" id="police_mobile_user" multiple="multiple">
                            </select>
                        </div>
                    </div>

                    {{--<div class="row">
                        <div class="col mb-3">
                            <label for="nameAnimation" class="form-label">Hospital Users</label>
                            <select class="form-control select2" id="hospital_users" multiple="multiple">
                            </select>
                        </div>
                    </div>--}}





                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-label-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary assign_user_to_meeting">Assign Users to Meeting</button>
                </div>
            </div>
        </div>
    </div>




    <div
            class="modal fade animate__animated fadeIn"
            id="createMeetingModel"
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
                            <label for="nameAnimation" class="form-label">Live Link For</label>
                            <select name="live_link_for" id="live_link_for" class="form-control">
                                <option value="">Select Link Type</option>
                                <option value="police_station">Police Station Link</option>
                                <option value="polling_station">Polling Station Link</option>
                                <option value="hospital">Hospital Link</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col mb-3">
                            <label for="nameAnimation" class="form-label">Agenda</label>
                             <input type="text" class="form-control" id="meeting_type">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col mb-3">
                            <label for="nameAnimation" class="form-label">Meeting Topic</label>
                            <input type="text" id="meeting_title" class="form-control">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col mb-3">
                            <label for="nameAnimation" class="form-label">Meeting Date</label>
                            <input type="date" id="meeting_date" class="form-control">

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
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCkUOdZ5y7hMm0yrcCQoCvLwzdM6M8s5qk"></script>
    <script src="{{ asset('assets/vendor/libs/datatables/jquery.dataTables.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/datatables-responsive/datatables.responsive.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/select2/select2.js') }}"></script>
    <script src="{{ asset('assets/js/app-custom.js') }}"></script>
    <script>

        $(document).ready(function (){
            meeting_id = "";
            $("body").on("click",".create_new_meeting",function () {
                $(this).hide();
                var meeting_type = $("#meeting_type").val();
                var meeting_title = $("#meeting_title").val();
                var meeting_date = $("#meeting_date").val();
                var live_link_for = $("#live_link_for").val();
                if(live_link_for == ""){
                    alert("Please Link Type");
                    $(".create_new_meeting").show();
                    return false;
                }
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
                    url: "{{ route('create-full-meeting') }}",
                    data: {
                        meeting_type: meeting_type,
                        meeting_title: meeting_title,
                        meeting_date: meeting_date,
                        live_link_for: live_link_for,
                        _token: '{{ csrf_token() }}'

                    },
                    success: function(res) {
                        alert("Meeting Has Been Created Successfully");
                        $(".create_new_meeting").show();
                        window.location.reload();


                    }
                });
            });

            $('#users-list').DataTable({
                lengthMenu: [100, 200, 300, 500],
                pageLength: 100,
                processing: true,
                serverSide:false

            });

            $("body").on("click",".assign_to_user",function (e) {
                meeting_id= $(this).attr("data-id");
                $("#animationModal").modal("show");
            });

            $("body").on("click",".generate_push",function (e) {
                meeting_id= $(this).attr("data-id");
                $.ajax({
                    url: '{{ route("sendMeetingNotification") }}', // Replace with your actual URL
                    method: 'post',
                    data: {
                        meeting_id: meeting_id,
                        _token: '{{ csrf_token() }}'

                    },
                    success: function (response) {
                       alert("Invitation has been sent to all users");
                    }
                });

            });

            $("body").on("click",".assign_user_to_meeting",function (e) {
               var district_id = $("#district_id").val();
               var police_station_id = $("#police_station_id").val();
                var police_station_users = $("#police_station_users").val();
                var polling_station_user = $("#polling_station_user").val();
                var police_mobile_user = $("#police_mobile_user").val();
               /*if(police_station_users.length == 0){
                   alert("Please assign users to meeting");
                   return false;
               }*/
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                $.ajax({
                    url: '{{ route("assignUserToMeeting") }}', // Replace with your actual URL
                    method: 'post',
                    data:{meeting_id,district_id,police_station_id,police_station_users,polling_station_user,police_mobile_user, _token: '{{ csrf_token() }}'},
                    success: function (response) {
                        if(response.status == true){
                             window.location.reload();
                        }

                    }
                });

            });


            $('#district_id').on('change', function () {
                var selectedDistrict = $(this).val();
                $.ajax({
                    url: '{{ route("getMultiDistrictUser") }}', // Replace with your actual URL
                    method: 'post',
                    data: {
                        districts: selectedDistrict,
                        _token: '{{ csrf_token() }}'

                    },
                    success: function (response) {
                        console.log(response);

                        var psOptions = '<option value=""></option>';
                        $.each(response.data, function (index, item) {
                            psOptions += '<option value="' + item.id + '">' + item.name + '</option>';
                        });
                        $("#police_station_users").html(psOptions);

                        var psuOptions = '';
                        $.each(response.users.polling_station_user, function (index, item) {
                            psuOptions += '<option value="' + item.id + '">' + item.name + '</option>';
                        });
                        $("#polling_station_user").html(psuOptions);


                        var policeMobileOptions = '';
                        $.each(response.users.police_mobile_user, function (index, item) {

                            policeMobileOptions += `<option value="${item.id}">${item.name} ( ${item.police_mobile.registration_number} )</option>`;
                        });
                        $("#police_mobile_user").html(policeMobileOptions);

                        var police_station_UserOptions = '';
                        $.each(response.users.police_station_users, function (index, item) {
                            police_station_UserOptions += `<option value="${item.id}">${item.name} </option>`;
                        });
                        $("#police_station_users").html(police_station_UserOptions);


                    }
                });

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

                loadCircle();


            });

            $("body").on("change","#circle_id",function (e) {
                loadMultiPoliceStations();
            });

            $('#police_station_id').on('change', function () {
                var selectedDistrict = $("#district_id").val();
                var police_station_id = $(this).val();
                $.ajax({
                    url: '{{ route("getMultiPoliceStationUser") }}', // Replace with your actual URL
                    method: 'post',
                    data: {
                        districts: selectedDistrict,
                        police_station_id: police_station_id,
                        _token: '{{ csrf_token() }}'

                    },
                    success: function (response) {
                        console.log(response);



                        var psuOptions = '';
                        $.each(response.users.polling_station_user, function (index, item) {
                            psuOptions += '<option value="' + item.id + '">' + item.name + '</option>';
                        });
                        $("#polling_station_user").html(psuOptions);


                        var policeMobileOptions = '';
                        $.each(response.users.police_mobile_user, function (index, item) {

                            policeMobileOptions += `<option value="${item.id}">${item.name} ( ${item.police_mobile.registration_number} )</option>`;
                        });
                        $("#police_mobile_user").html(policeMobileOptions);



                        var police_station_UserOptions = '';
                        $.each(response.users.police_station_users, function (index, item) {
                            police_station_UserOptions += `<option value="${item.id}">${item.name} </option>`;
                        });
                        $("#police_station_users").html(police_station_UserOptions);
                    }
                });


            });


        });

        function copyToClipboard(element) {
            var $temp = $("<input>");
            $("body").append($temp);
            $temp.val($.trim($(element).text())).select();
            document.execCommand("copy");
            $temp.remove();
            alert("Copy to clip board");

        }

        function loadCircle() {

            var districts = $('#district_id').val();
            $.ajax({
                url: '{{ route("getMultiCircles") }}' , // Replace with your actual URL
                method: 'post',
                data: {
                    districts: districts,
                    _token: '{{ csrf_token() }}'

                },
                success: function (response) {

                    var psOptions = '<option value="">Select Circle</option>';
                    $.each(response.data, function (index, item) {
                        psOptions += '<option value="' + item.id + '">' + item.name + '</option>';
                    });
                    $("#circle_id").html(psOptions);
                }
            });
        }

        function loadMultiPoliceStations() {

            var circles = $("#circle_id").val();
            $.ajax({
                url: '{{ route("loadMultiPoliceStations") }}' , // Replace with your actual URL
                method: 'post',
                data: {
                    circles: circles,
                    _token: '{{ csrf_token() }}'

                },
                success: function (response) {

                    var psOptions = '<option value="">Select Police Stations</option>';
                    $.each(response.data, function (index, item) {
                        psOptions += '<option value="' + item.id + '">' + item.title + '</option>';
                    });
                    $("#police_station_id").html(psOptions);
                }
            });
        }

    </script>
@endpush