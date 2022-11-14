@extends('layouts.app')

@section('content')
<div class="container-lg bleda mt-3 pt-3 pb-3">
    <div class="row">
        <div class="col-12">
            <h1 class="zarovanaj-na-sted">{{ $tatry->title }}</h1>
        </div>
    </div>
    <div class="row">
        <img src="{{ asset('img/tatry/' . $tatry->image) }}" class="tatry-obrazok" alt="{{ $tatry->title }}">
    </div>
    <div class="row">
        <div class="col-3 col-sm-2 fs-4">Dĺžka túry: {{ $tatry->dlzka }}</div>
        <div class="col-3 col-sm-2 fs-4">Čas túry: {{ $tatry->cas }}</div>
    </div>
    <div class="row">
        <p class="m-2">
            {{ $tatry->description }}
        </p>
    </div>

</div>
@endsection