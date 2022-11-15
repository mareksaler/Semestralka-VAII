@extends('layouts.app')

@section('content')
<div class="container-lg bleda mt-3 pt-3 pb-3">
    <div class="row">
        <div class="col-12">
            <h1 class="zarovanaj-na-sted">Pridaj túru</h1>
        </div>
    </div>

    @if ($errors->any())
    @foreach ($errors->all() as $error)
    <div class="row justify-content-center">
        <div class="alert alert-danger col-4 m-1" role="alert">
            {{ $error }}
        </div>
    </div>
    @endforeach
    @endif


    <form action="/vysokeTatry" method="POST" enctype="multipart/form-data">
        @csrf

        <div class="row pb-2  justify-content-center">
            <div class="col-md-6">
                <label for="nazov" class="form-label">Názov</label>
                <input type="text" class="form-control" id="nazov" placeholder="Nazov" name="title">
            </div>
        </div>

        <div class="row pb-2  justify-content-center">
            <div class="col-md-6">
                <label for="obsah" class="form-label">Obsah</label>
                <textarea class="form-control" placeholder="Obsah..." id="obash" name="description"></textarea>
            </div>
        </div>

        <div class="row pb-2 justify-content-center">
            <div class="col-md-6">
                <label for="formFile" class="form-label">Obrazok</label>
                <input class="form-control" type="file" id="formFile" name="image">
            </div>
        </div>
        <div class="row pb-2 justify-content-center">
            <div class="col-md-6">
                <label for="dlzka" class="form-label">Dĺžka túry (v km):</label>
                <input type="number" id="dlzka" name="dlzka" class="form-control" step="0.01" min="0.01" max="100">
            </div>
        </div>
        <div class="row pb-2 justify-content-center">
            <div class="col-md-6">
                <label for="cas" class="form-label">Čas túry (v hod):</label>
                <input type="number" id="cas" name="cas" class="form-control" step="0.1" min="0.1" max="100">
            </div>
        </div>
        <div class="row pb-2 justify-content-center">
            <div class="col-md-6">
                <label for="area" class="form-label">Kategória:</label>
                <select class="form-select" aria-label="Default select example" name="area" id="area">
                    <option value="V">Vysoké Tatry</option>
                    <option value="N">Nízke Tatry</option>
                    <option value="Z">Západné Tatry</option>
                </select>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col-md-6">
                <button type="submit" class="btn btn-primary">Pridať</button>
            </div>
        </div>

    </form>
</div>
@endsection