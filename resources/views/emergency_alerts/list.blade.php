@extends('layouts.'.config('settings.active_layout'))
@php $app_id = config('settings.app_id') @endphp

@push('stylesheets')
    <style>
        .table > :not(caption) > * > * {padding: 5px;}
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
                    <div class="row g-3">
                        <div class="col-md-3">
                            <select class="form-control select2" id="district_id">
                                <option value="">Select District</option>
                                @foreach($districts as $key => $value)
                                    <option value="{{$value->id}}">{{$value->title}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="col-md-3">
                            <select class="form-control select2" id="notification_type">
                                <option value="">Select Type...</option>
                                <option value="Law and Order">Law and Order</option>
                                <option value="Terorrism">Terorrism</option>

                            </select>
                        </div>

                        <div class="col-md-3">
                            <select class="form-control select2" id="is_read_filter">
                                <option value="">Select Type...</option>
                                <option value="1">New</option>
                                <option value="0">Read</option>

                            </select>
                        </div>

                        <div class="col-md-3">
                            <select class="form-control select2" id="alert_status">
                                <option value="">Alert Status...</option>

                                <option value="Pending">Pending</option>
                                <option  value="In Process">In Process</option>
                                <option  value="Resolved">Resolved</option>


                            </select>
                        </div>
                    </div>
                    <div class="row">


                        <div class="col-12">


                            <div class="table-responsive" style="min-height: 200px">

                                <table id="users-list" class="table table-striped data_mf_table table-condensed" >

                                    <thead>
                                    <tr>
{{--                                        <th>#</th>--}}
                                        <th style="width: 10%">District</th>
                                        <th style="width: 10%">User</th>
                                        <th style="width: 10%">message</th>
                                        <th style="width: 10%">Notification Type</th>
                                        <th style="width: 10%">Read Status</th>
                                        <th style="width: 10%">Alert Status</th>
                                        <th style="width: 10%">Created At</th>
                                        <th style="width: 10%">Action</th>

                                    </tr>
                                    </thead>

                                    <tbody>



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
@endsection

@push('scripts')
    <script src="{{ asset('assets/vendor/libs/datatables/jquery.dataTables.js') }}"></script>

    <script src="{{ asset('assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js') }}"></script>
    <link rel="stylesheet" href="{{ asset('assets/vendor/libs/select2/select2.css') }}" />
    <script src="{{ asset('assets/vendor/libs/select2/select2.js') }}"></script>
    <script src="{{ asset('assets/js/app-custom.js') }}"></script>

    <script>
        var id =0;
        district_id = "";
        notification_type = "";
        is_read_filter = "";
        alert_status = "";
        $(document).ready(function (){
            $("body").on("change","#district_id",function (e) {
                 district_id = $(this).val();
                user_table.ajax.reload();
            });

            $("body").on("change","#notification_type",function (e) {
                notification_type = $(this).val();
                user_table.ajax.reload();
            });
            $("body").on("change","#is_read_filter",function (e) {
                is_read_filter = $(this).val();
                user_table.ajax.reload();
            });

            $("body").on("change","#alert_status",function (e) {
                alert_status = $(this).val();
                user_table.ajax.reload();
            });
            user_table = $('#users-list').DataTable({
                processing: true,
                serverSide: true,
                lengthMenu: [ [100, 250, -1],[100, 250, 'All']],
                pageLength: 50,
                ajax: {
                    url: '{{route("all.emergency.alerts")}}',
                    data: function (d) {
                        d.district_id = district_id;
                        d.notification_type = notification_type;
                        d.is_read_filter = is_read_filter;
                        d.alert_status = alert_status;
                    }

                },

                columns: [

                    {data: 'district.title', name: 'district.title'},
                    {data: 'users.username', name: 'users.username'},
                    {data: 'message', name: 'message'},
                    {data: 'type', name: 'type'},
                    {data: 'status', name: 'status'},
                    {data: 'alert_status', name: 'alert_status'},
                    {data: 'created_at', name: 'created_at'},
                    {data: 'action', name: 'action'},


                ],
                responsive: true,
                processing: true,
                serverSide: true,
                searching:  true,
                sorting:    true,
                paging:     true,
                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            });

            $("body").on("click",".delete_table_data",function (e) {
                var id  = $(this).attr("data-id");
                if (confirm('Are you sure to delete this record ?')) {
                    $.ajax({
                        type: 'post',
                        url: "{{ route('delete-table-data') }}",
                        data: {
                            id: id,
                            table:"notifications",
                            _token: '{{ csrf_token() }}'

                        },
                        success: function(res) {
                            //user_table.dataTable.reload();
                            window.location.reload();
                        }
                    })
                } else {
                    alert('Why did you press cancel? You should have confirmed');
                }
            });
        })
    </script>
@endpush