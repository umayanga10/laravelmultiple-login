@extends('master')

@section('title')
    Registered User
@endsection


@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                @endif
                <div class="card-header">
                    <h4 class="card-title"> Registered User </h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table">
                            <thead class=" text-primary">
                            <th>ID</th>
                            <th>Name</th>
                            <th>E-mail</th>
                            <th>User Type</th>
                            <th></th>
                            <th></th>
                            </thead>
                            <tbody>
                            @foreach($register as $row)
                            <tr>
                                <td>{{ $row->id }}</td>
                                <td>{{ $row->name }}</td>
                                <td>{{ $row->email }}</td>
                                <td>{{ $row->usertype }}</td>
                                <td><a href="/editregister/{{ $row->id }}" class="btn btn-success">Edit</a></td>
                                <td><a href="/delete-register/{{ $row->id }}" class="btn btn-danger">Delete</a></td>
                            </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection


@section('scripts')
    @yield('scripts')
@endsection
