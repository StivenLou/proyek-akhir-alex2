@extends('layouts.main')

@section('content')
<div class="col-md-8 offset-md-2">

    @if($errors->any())
    <ul>
        @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
        @endforeach
    </ul>
</div><br>
    @endif
<div class="card mt-3">
<div class="card-header">
    <h3>Ubah Patient</h3>
</div>
<div>
    <form action="{{ route('patients.update', $patients->id) }}" method="POST" enctype="multipart/form-data" class="form-horizontal">
        @csrf
        @method('PUT')
            <div class="form-group mt-2">
                <label for="code">No. Registrasi</label>
                <input type="text" value="{{ $patients->registration_code }}" class="form-control" name="registration_code">
            </div>
            <div class="form-group mt-2">
                <label for="name">Nama Pasien</label>
                <input type="text" value="{{ $patients->name }}" class="form-control" name="name">
            </div>
            <div class="form-group mt-2">
                <label for="name">Tanggal Lahir</label>
                <input type="date" value="{{ $patients->birthdate }}" class="form-control" name="birthdate">
            </div>
            <div class="form-group mt-2">
                <label for="name">Jenis Kelamin</label>
                <select class="form-control" value="{{ $patients->gender }}" name="gender">
                        <option> Pria </option>
                        <option> Wanita </option>
                </select>
            </div>
            <div class="form-group mt-2">
                    <label for="status">Pilih Poli</label>
                    <select class="form-control" value="{{ $patients->polyclinic_id }}" wire:model="selectedClass" name="polyclinic_id">
                        <option value="">Pilih Poli</option>
                        @foreach ($polyclinics as $polyclinic)
                        <option value="{{ $polyclinic->id }}">{{ $polyclinic->name }}</option>
                        @endforeach
                    </select>
            </div>

            @if (!is_null($doctors))
            <div class="form-group mt-2">
                    <label for="status">Pilih Dokter</label>
                    <select class="form-control" value="{{ $patients->doctor_id }}" wire:model="selectedSection" name="doctor_id">
                        <option value="">Pilih Dokter</option>
                        @foreach ($doctors as $doctor)
                        <option value="{{ $doctor->id }}">{{ $doctor->name }}</option>
                        @endforeach
                    </select>
            </div>
            @endif






        <!-- /.card-body -->
        <button type="submit" class="btn btn-primary mt-3">Simpan</button>
        <!-- /.card-footer -->
    </form>
</div>
</div>
@endsection
