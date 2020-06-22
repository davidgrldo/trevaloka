@extends('layouts.admin')

@section('content')
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Tambah Paket Travel</h1>
    </div>

    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <div class="card shadow">
        <div class="card-body">
            <form action="{{route('travel-package.store')}}" method="POST">
                @csrf
                {{-- Title --}}
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" name="title" placeholder="Title" 
                    value="{{old('title')}}">
                </div>
                {{-- Location --}}
                <div class="form-group">
                    <label for="location">Location</label>
                    <input type="text" class="form-control" name="location" placeholder="Location" 
                    value="{{old('location')}}">
                </div>
                {{-- About --}}
                <div class="form-group">
                    <label for="about">About</label>
                    <textarea name="about" class="d-block- w-100 form-control" rows="10">
                        {{old('about')}}
                    </textarea>
                </div>
                {{-- Featured Event --}}
                <div class="form-group">
                    <label for="featured_event">Featured Event</label>
                    <input type="text" class="form-control" name="featured_event" placeholder="Featured Event" 
                    value="{{old('featured_event')}}">
                </div>
                {{-- Language --}}
                <div class="form-group">
                    <label for="language">Language</label>
                    <input type="text" class="form-control" name="language" placeholder="Language" 
                    value="{{old('language')}}">
                </div>
                {{-- Foods --}}
                <div class="form-group">
                    <label for="foods">Foods</label>
                    <input type="text" class="form-control" name="foods" placeholder="Foods" 
                    value="{{old('foods')}}">
                </div>
                {{-- Departure Date --}}
                <div class="form-group">
                    <label for="departure_date">Departure Date</label>
                    <input type="date" class="form-control" name="departure_date" placeholder="Departure Date"
                    value="{{old('departure_date')}}">
                </div>
                {{-- Duration --}}
                <div class="form-group">
                    <label for="duration">Duration</label>
                    <input type="text" class="form-control" name="duration" placeholder="Duration" 
                    value="{{old('duration')}}">
                </div>
                {{-- Type --}}
                <div class="form-group">
                    <label for="type">Type</label>
                    <input type="text" class="form-control" name="type" placeholder="Type" 
                    value="{{old('type')}}">
                </div>
                {{-- Price --}}
                <div class="form-group">
                    <label for="price">Price</label>
                    <input type="number" class="form-control" name="price" placeholder="Price" 
                    value="{{old('price')}}">
                </div>
                <button type="submit" class="btn btn-primary btn-block">
                    Simpan
                </button>
            </form>
        </div>
    </div>

</div>
<!-- /.container-fluid -->
@endsection
