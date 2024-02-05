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
                            <select class="form-select select2" multiple="multiple" id="circle_id">


                            </select>
                        </div>

                        <div class="col-md-3">
                            <a class="btn btn-primary" href="{{route('exportPoliceStations')}}">Export To Excel</a>
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
                                        <th style="width: 10%">Circle</th>
                                        <th style="width: 10%">Police Station Name</th>
                                        <th  style="width: 7%">Strength</th>

                                        <th style="width: 10%">Lat</th>
                                        <th style="width: 10%">Long</th>
                                        <th  style="width: 10%">Action</th>
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
    <script src="{{ asset('assets/vendor/libs/datatables-responsive/datatables.responsive.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.js') }}"></script>
    <link rel="stylesheet" href="{{ asset('assets/vendor/libs/select2/select2.css') }}" />
    <script src="{{ asset('assets/vendor/libs/select2/select2.js') }}"></script>
    <script>
        var id = 0;
        $(document).ready(function (){
            district_id = "";
            circle_id = [];







            user_table = $('#users-list').DataTable({
                processing: true,
                serverSide: true,

                lengthMenu: [
                    [ 100, 250, 500, 1000 ],
                    [ '100', '250', '500', '1000']
                ],
                pageLength: 50,
                ajax: {
                    url: '{{route("all.police.station")}}',
                    data: function (d) {
                        d.district_id = district_id;
                        d.circle_id = circle_id;

                    }

                },

                columns: [

                    {data: 'district_name', name: 'district.title',searchable:true},
                    {data: 'circle_name', name: 'circle.name',searchable:true},
                    {data: 'title', name: 'title',searchable:true},
                    {data: 'strength', name: 'strength',searchable:true},
                    {data: 'latitude', name: 'latitude',searchable:true},
                    {data: 'longitude', name: 'longitude',searchable:true},
                    {data: 'action', name: 'action', orderable: false, searchable: false}
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

            $("body").on("change","#district_id",function (e) {
                district_id = $(this).val();
                user_table.ajax.reload();
                loadCircle();
            });

            $("body").on("change","#circle_id",function (e) {
                circle_id = $(this).val();
                user_table.ajax.reload();

            });

            function loadCircle() {

                var districts = $("#district_id").val();
                $.ajax({
                    url: '{{ route("getCircles") }}/'+ districts, // Replace with your actual URL
                    method: 'get',
                    data: {

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

            $("body").on("click",".delete_table_data",function (e) {
                var id  = $(this).attr("data-id");
                if (confirm('Are you sure to delete this record ?')) {
                    $.ajax({
                        type: 'post',
                        url: "{{ route('delete-table-data') }}",
                        data: {
                            id: id,
                            table:"police_stations",
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


            $("body").on("click",".delete_button",function (e) {
               id = $(this).attr("data-id");
                if (confirm('Are you sure to delete this record ?')) {
                    $.ajax({
                        type: 'post',
                        url: "{{ route('delete.police.station') }}",
                        data: {
                            id: id,
                            _token: '{{ csrf_token() }}'

                        },
                        success: function(res) {
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