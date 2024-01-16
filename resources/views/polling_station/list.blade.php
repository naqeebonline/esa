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
                                        <th  style="width: 15%">Polling Station</th>
                                        <th style="width: 20%">District Name</th>
                                        <th style="width: 20%">Police Station</th>

                                        <th style="width: 10%">SENSITIVITY</th>
                                        <th style="width: 10%">Distance From Police Station</th>
                                        <th style="width: 10%">No of Male Booth</th>
                                        <th style="width: 10%">No of Female Booth</th>
                                        <th style="width: 10%">Male Voters</th>
                                        <th style="width: 10%">Female Voters</th>
                                        <th style="width: 10%">In-charge Contact</th>
                                        <th style="width: 10%">Lat</th>
                                        <th style="width: 10%">Long</th>
                                        <th  style="width: 10%">Action</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    @foreach($data as $key => $value)
                                        <tr>
                                            <td>{{$value->polling_station_name}}</td>

                                            <td>{{$value->district->title ?? ""}}</td>
                                            <td>{{$value->policeStation->title ?? ""}}</td>

                                            <td>

                                                @if($value->sensitivitys->title == "Most Sensitive")
                                                    <span class="badge badge-danger" style="color: red">{{$value->sensitivitys->title}}</span>
                                                @elseif($value->sensitivitys->title == "Sensitive")
                                                    <span class="badge badge-warning" style="color: orange">{{$value->sensitivitys->title}}</span>
                                                @else
                                                    <span class="badge badge-info" style="color:blue">{{$value->sensitivitys->title}}</span>
                                                @endif
                                            </td>
                                            <td>{{$value->distance_from_ps}}</td>
                                            <td>{{$value->number_of_male_booth}}</td>
                                            <td>{{$value->number_of_female_booth}}</td>
                                            <td>{{$value->male_voters}}</td>
                                            <td>{{$value->female_voters}}</td>
                                            <td>{{$value->incharge_contact}}</td>
                                            <td>{{$value->lat}}</td>
                                            <td>{{$value->lng}}</td>
                                            <td>

                                                <a href="{{route('edit.polling.station',$value->id)}}" class="btn btn-primary btn-icon btn-sm">
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