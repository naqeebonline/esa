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
                                        <th style="width: 10%">Police Station</th>
                                        <th style="width: 10%">Name</th>
                                        <th  style="width: 7%">Strength</th>
                                        <th  style="width: 7%">Police Station Contact</th>
                                        <th style="width: 10%">Incharge Name</th>
                                        <th style="width: 10%">Incharge Contact</th>
                                        <th style="width: 10%">Incharge Rank</th>
                                        <th style="width: 10%">Lat</th>
                                        <th style="width: 10%">Long</th>

                                        <th  style="width: 10%">Action</th>
                                    </tr>
                                    </thead>

                                    <tbody>

                                    @foreach($data as $key => $value)
                                        <tr>
                                            <td>{{$value->district->title ?? ""}}</td>
                                            <td>{{$value->policeStation->title ?? ""}}</td>
                                            <td>{{$value->name}}</td>
                                            <td>{{$value->strength}}</td>
                                            <td>{{$value->contact_number}}</td>
                                            <td>{{$value->incharge_name}}</td>
                                            <td>{{$value->incharge_contact}}</td>
                                            <td>{{$value->incharge_rank}}</td>
                                            <td>{{$value->lat}}</td>
                                            <td>{{$value->lng}}</td>

                                            <td>
                                                {{--<a href="{{route('edit.police.station',$value->id)}}" class="btn btn-primary">Edit</a>--}}
                                                <a href="{{route('edit.police.post',$value->id)}}" class="btn btn-primary btn-icon btn-sm">
                                                    <i class="tf-icons bx bx-pencil"></i>
                                                </a>
                                                <a href="javascript:void(0)" data-id="{{$value->id}}" class="btn btn-danger btn-icon btn-sm delete_button">
                                                    <i class="tf-icons bx bx-window-close"></i>
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
        var id =0;
        $(document).ready(function (){
            $('#users-list').DataTable({
                lengthMenu: [100, 200, 300, 500],
                pageLength: 100,
                processing: true,
                serverSide:false

            });

            $("body").on("click",".delete_button",function (e) {
                id = $(this).attr("data-id");
                if (confirm('Are you sure to delete this record ?')) {
                    $.ajax({
                        type: 'post',
                        url: "{{ route('delete.police.post') }}",
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