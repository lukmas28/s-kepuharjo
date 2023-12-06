@extends('layouts.mainlayout')
@section('title', 'Surat Selesai')
<!-- partial -->
@section('content')
    @php
        $nama = session()->get('nama');
        $akses = session()->get('hak_akses');
        $rt = session()->get('rt');
        $rw = session()->get('rw');
    @endphp
    <div class="card" style="border-radius: 2px;">
        <div class="card-body">
            <div class="header-atas">
                <h5 class="font-weight-bold text-dark">Surat Selesai</h5>
                @if ($akses == 'admin')
                    <a class="btn btn-sm mb-2 btn-success icon-paper" data-toggle="modal" data-target="#modal-cetak"s
                        tyle="color: white;"> Export
                        Excel</a>
                @endif
            </div>
            <table id="myTable" class="table table-bordered">
                <thead style="background-color: grey; color: white;">
                    <tr>
                        <th>No</th>
                        <th>NIK</th>
                        <th>Nama</th>
                        <th>Jenis Surat</th>
                        <th>Waktu Pengajuan</th>
                        <th>Status</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($data as $no => $value)
                        <tr>
                            <td>{{ $no + 1 }}</td>
                            <td>{{ $value->nik }}</td>
                            <td>{{ $value->nama_lengkap }}</td>
                            <td>{{ $value->nama_surat }}</td>
                            <td>{{ $value->created_at }}</td>
                            <td>{{ $value->status }}</td>
                            <td>
                                <a class="btn btn-secondary btn-sm" style="background: #00AAAA; color: white;"
                                    data-toggle="modal" data-target="#exampleModal{{ $value->nik }}" style="color: white;"
                                    href="#">Detail</a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>

    <form action="{{ url('/export') }}" method="get">
        <div class="modal fade" id="modal-cetak" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true" autocomplete="off">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Cetak Rekap Pengajuan</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <div class="form-group">
                            <label for="tahun">Pilih Tahun</label>
                            <div class="col">
                                <select class="form-control" name='tahun' id="year">
                                    <option value="">-- Pilih --</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="bulan">Bulan</label>
                            <div class="col">
                                <select class="form-control" name="bulan" autocomplete="off"
                                    id="exampleFormControlSelect1">
                                    <option value="pilih">-- Pilih --</option>
                                    <option value="01">Januari</option>
                                    <option value="02">Februari</option>
                                    <option value="03">Maret</option>
                                    <option value="04">April</option>
                                    <option value="05">Mei</option>
                                    <option value="06">Juni</option>
                                    <option value="07">Juli</option>
                                    <option value="08">Agustus</option>
                                    <option value="09">September</option>
                                    <option value="10">Oktober</option>
                                    <option value="11">November</option>
                                    <option value="12">Desember</option>
                                </select>
                            </div>
                        </div>


                        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
                        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
                        <script>
                            var startYear = 2020; // Tahun awal
                            var endYear = new Date().getFullYear(); // Tahun saat ini
                            var select = document.getElementById("year");

                            for (var year = endYear; year >= startYear; year--) {
                                var option = document.createElement("option");
                                option.text = year;
                                option.value = year;
                                select.appendChild(option);
                            }
                        </script>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                        <button type="submit" class="btn btn-success">Cetak</button>
                    </div>
                </div>
            </div>
        </div>
    </form>

    @foreach ($data as $no => $value)
        <div class="modal fade" id="exampleModal{{ $value->nik }}" tabindex="-1" role="dialog"
            aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Pratinjau Data</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        @if ($akses == 'admin')
                            <div class="form-group">
                                <label>Nomor Surat</label>
                                <input type="text" name="nik" class="form-control" value="{{ $value->nomor_surat }}"
                                    maxlength="50" required="">
                                <span class="text-danger">
                            </div>
                        @endif
                        <div class="form-group">
                            <label>NIK</label>
                            <input type="text" name="nik" class="form-control" value="{{ $value->nik }}"
                                maxlength="50" required="">
                            <span class="text-danger">
                        </div>
                        <div class="form-group">
                            <label>Nama </label>
                            <input type="text" name="nama" class="form-control"
                                value="{{ $value->nama_lengkap }}" maxlength="50" required="">
                        </div>
                        <div class="form-group">
                            <label>Tempat, Tanggal Lahir </label>
                            <input type="text" name="ttl" class="form-control"
                                value="{{ $value->tempat_lahir }}, {{ $value->tgl_lahir }}" maxlength="50"
                                required="">
                        </div>
                        <div class="form-group">
                            <label>Jenis kelamin</label>
                            <input type="text" name="kelamin" class="form-control"
                                value="{{ $value->jenis_kelamin }}" maxlength="50" required="">
                        </div>
                        <div class="form-group ">
                            <label>Kebangsaan/Agama</label>
                            <input type="text" name="kebangsaan" class="form-control"
                                value="{{ $value->kewarganegaraan }} / {{ $value->agama }}" maxlength="30"
                                required="">
                        </div>
                        <div class="form-group">
                            <label>Status</label>
                            <input type="text" name="status" class="form-control"
                                value="{{ $value->status_perkawinan }}" maxlength="50" required="">
                            <span class="text-danger">
                        </div>
                        <div class="form-group">
                            <label>Pekerjaan</label>
                            <input type="text" name="pekerjaan" class="form-control" value="{{ $value->pekerjaan }}"
                                maxlength="50" required="">
                            <span class="text-danger">
                        </div>
                        <div class="form-group">
                            <label>Alamat</label>
                            <input type="text" name="alamat" class="form-control" value="{{ $value->alamat }}"
                                maxlength="50" required="">
                            <span class="text-danger">
                        </div>
                        <div class="form-group">
                            <label>Tanggal Pengajuan</label>
                            <input type="text" name="tglpengajuan" class="form-control"
                                value="{{ $value->created_at }}" maxlength="50" required="">
                            <span class="text-danger">
                        </div>
                        <div class="form-group">
                            <label>Keperluan Surat</label>
                            <input type="text" name="keperluan" class="form-control"
                                value="{{ $value->keterangan }}" maxlength="50" required="">
                            <span class="text-danger">
                        </div>
                        <div class="form-group">
                            <label for="">Foto Kartu Keluarga</label>
                            <img src="{{ asset('images/' . $value->image_kk) }}" class="img-thumbnail"
                                alt="Responsive image">
                        </div>
                        <div class="form-group">
                            <label for="">Bukti Pendukung</label>
                            <img src="{{ asset('images/' . $value->image_bukti) }}" class="img-thumbnail"
                                alt="Responsive image">
                        </div>
                    </div>
                    @if ($akses == 'admin')
                        <div class="modal-footer">
                            <a type="button" class="btn btn-secondary" href="{{ url('generate-pdf/' . $value->id) }}"
                                style="background-color: rgb(0, 189, 0); color: white;">Unduh Surat</a>
                            <a class="btn btn-secondary" type="button"
                                onClick="window.open('https://wa.me/62{{ $value->no_hp }}')" target="_blank">Kirim Via
                                WhatsApp</a>
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Kembali</button>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    @endforeach
@endsection


<style>
    .header-atas {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .header h4 {
        margin: 0;
    }

    .header button {
        margin-left: auto;
    }
</style>
