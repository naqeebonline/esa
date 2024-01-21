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

                            <div class="table-responsive" style="min-height: 200px">

                                <table id="users-list" class="table table-striped data_mf_table table-condensed" >

                                    <thead>
                                    <tr>
{{--                                        <th>#</th>--}}
                                        <th style="width: 10%">District</th>
                                        <th style="width: 10%">Circle</th>
                                        <th style="width: 10%">Police Station</th>
                                        <th  style="width: 7%">Registration #</th>
                                        <th  style="width: 7%">Vehicle Type</th>
                                        <th style="width: 10%">Incharge Name</th>
                                        <th style="width: 10%">Contact Number</th>
                                        <th style="width: 10%">Rank</th>
                                        <th style="width: 10%">Lat</th>
                                        <th style="width: 10%">Lang</th>
                                        <th  style="width: 10%">Action</th>
                                    </tr>
                                    </thead>

                                    <tbody>

                                    @foreach($data as $key => $value)
                                        <tr>
                                            <td>{{$value->district->title ?? ""}}</td>
                                            <td>{{$value->circle->name ?? ""}}</td>
                                            <td>{{$value->policeStation->title ?? ""}}</td>
                                            <td>{{$value->registration_number}}</td>
                                            <td>{{$value->vehicleType->name ?? ""}}</td>
                                            <td>{{$value->incharge_name}}</td>
                                            <td>{{$value->contact_number}}</td>
                                            <td>{{$value->rank}}</td>
                                            <td>{{$value->lat}}</td>
                                            <td>{{$value->lng}}</td>

                                            <td>
                                                {{--<a href="{{route('edit.police.station',$value->id)}}" class="btn btn-primary">Edit</a>--}}
                                                <a href="{{route('edit.police.mobile',$value->id)}}" class="btn btn-primary btn-icon btn-sm">
                                                    <i class="tf-icons bx bx-pencil"></i>
                                                </a>
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
@endsection

@push('scripts')
    <script src="{{ asset('assets/vendor/libs/datatables/jquery.dataTables.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/datatables-responsive/datatables.responsive.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.js') }}"></script>
    <script>
        $(document).ready(function (){
            $('#users-list').DataTable({
                lengthMenu: [100, 200, 300, 500],
                pageLength: 100,
                processing: true,
                serverSide:false

            });
        })
    </script>
@endpush