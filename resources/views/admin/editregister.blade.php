@extends('master')

@section('title')
    Register-Update User
@endsection


@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title"> Registered User </h4>
                </div>
                <div class="card-body">
                   <div class="col-md-6">
                       <form action="/update-register/{{ $register->id }}" method="POST" enctype="multipart/form-data">
                           {{ csrf_field() }}
                           {{ method_field('PUT') }}
                           <label>Name</label>
                           <input type="text" name="name" value="{{ $register->name }}" class="form-control">

                           <label>E-mail</label>
                           <input type="text" name="email" value="{{ $register->email }}" class="form-control">

                           <label>User Type</label>
                           <select name="user" class="form-control">
                               <option value="admin">Admin</option>
                               <option value="customer">Customer</option>
                               <option value="seller">Seller</option>
                           </select>

                           <button class="btn btn-success" name="update" >Update</button>
                       </form>
                   </div>
                </div>
            </div>
        </div>
    </div>
@endsection


@section('scripts')
    @yield('scripts')
@endsection
