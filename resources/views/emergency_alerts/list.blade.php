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

                    <div class="row">


                        <div class="col-12">
                            <div class="col-md-3">
                                <select class="form-control select2" id="district_id">
                                    <option value="">Select District</option>
                                    @foreach($districts as $key => $value)
                                    <option value="{{$value->id}}">{{$value->title}}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="table-responsive" style="min-height: 200px">

                                <table id="users-list" class="table table-striped data_mf_table table-condensed" >

                                    <thead>
                                    <tr>
{{--                                        <th>#</th>--}}
                                        <th style="width: 10%">District</th>
                                        <th style="width: 10%">User</th>
                                        <th style="width: 10%">message</th>
                                        <th style="width: 10%">Notification Type</th>
                                        <th style="width: 10%">Image</th>
                                        <th style="width: 10%">Audio</th>
                                        <th style="width: 10%">Video</th>

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
        $(document).ready(function (){
            $("body").on("change","#district_id",function (e) {
                 district_id = $(this).val();
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
                    }

                },

                columns: [

                    {data: 'district.title', name: 'district.title'},
                    {data: 'users.username', name: 'users.username'},
                    {data: 'message', name: 'message'},
                    {data: 'type', name: 'type'},
                    {data: 'attachment', name: 'attachment'},
                    {data: 'audio', name: 'audio'},
                    {data: 'video', name: 'video'},


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