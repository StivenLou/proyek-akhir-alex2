<div>
    <form action="{{ route('patients.store') }}" method="POST" enctype="multipart/form-data" class="form-horizontal">
        @csrf
            <div class="form-group mt-2">
                <label for="code">No. Registrasi</label>
                <input type="text" value="{{ 'P'.date('Ymd') }}" class="form-control" name="registration_code">
            </div>
            <div class="form-group mt-2">
                <label for="name">Nama Pasien</label>
                <input type="text" class="form-control" name="name">
            </div>
            <div class="form-group mt-2">
                <label for="name">Tanggal Lahir</label>
                <input type="date" class="form-control" name="birthdate">
            </div>
            <div class="form-group mt-2">
                <label for="name">Jenis Kelamin</label>
                <select class="form-control" name="gender">
                        <option> Pria </option>
                        <option> Wanita </option>
                </select>
            </div>
            <div class="form-group mt-2">
                    <label for="status">Pilih Poli</label>
                    <select class="form-control" wire:model="selectedClass" name="polyclinic_id">
                        <option value="">Pilih Poli</option>
                        @foreach ($polyclinics as $polyclinic)
                        <option value="{{ $polyclinic->id }}">{{ $polyclinic->name }}</option>
                        @endforeach
                    </select>
            </div>

            @if (!is_null($doctors))
            <div class="form-group mt-2">
                    <label for="status">Pilih Dokter</label>
                    <select class="form-control" wire:model="selectedSection" name="doctor_id">
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
