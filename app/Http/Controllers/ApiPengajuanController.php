<?php

namespace App\Http\Controllers;

use App\Models\MobileMasterKksModel;
use App\Models\MobileMasterMasyarakatModel;
use App\Models\MobilePengajuanSuratModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ApiPengajuanController extends Controller
{
    public function pengajuan(Request $request)
    {
        $request->validate([
            'nik' => 'required',
            'keterangan' => 'required',
            'id_surat' => 'required',
            'image_kk' => 'required|image|mimes:jpeg,png,jpg|max:2048',
            'image_bukti' => 'required|image|mimes:jpeg,png,jpg|max:2048',
        ]);
        $masyarakat = MobileMasterMasyarakatModel::where('nik', $request->nik)->first();

        if (!$masyarakat) {
            return response()->json([
                'message' => 'Nik tidak ditemukan',
            ], 400);
        }

        $existingSurat = MobilePengajuanSuratModel::where('id_surat', $request->id_surat)
            ->where('id_masyarakat', $masyarakat->id_masyarakat)
            ->first();
        $imagekk = $request->file('image_kk');
        $imagebukti = $request->file('image_bukti');

        $imagenamekk = Str::random(10) . time() . '.' . $imagekk->getClientOriginalExtension();
        $imagenamebukti = Str::random(10) . time() . '.' . $imagebukti->getClientOriginalExtension();

        $imagekk->move(public_path('images/'), $imagenamekk);
        $imagebukti->move(public_path('images/'), $imagenamebukti);
        if (!$existingSurat) {
            $data = MobilePengajuanSuratModel::create([
                // 'id' => Str::uuid(),
                'status' => 'Diajukan',
                'keterangan' => $request->keterangan,
                'id_surat' => $request->id_surat,
                'info' => 'active',
                'image_kk' => $imagenamekk,
                'image_bukti' => $imagenamebukti,
                'id_masyarakat' => $masyarakat->id_masyarakat,
            ]);

            return response()->json([
                'message' => 'Berhasil mengajukan surat',
                'data' => $data
            ], 200);
        } else {
            $cek = MobilePengajuanSuratModel::where('id_surat', $request->id_surat)
                ->where('id_masyarakat', $masyarakat->id_masyarakat)
                ->where('info', 'active')
                ->exists();

            if ($cek) {
                return response()->json([
                    'message' => 'Surat sebelumnya belum selesai',
                ], 400);
            } else {
                $data = MobilePengajuanSuratModel::create([
                    // 'id' => Str::uuid(),
                    'keterangan' => $request->keterangan,
                    'status' => 'Diajukan',
                    'info' => 'active',
                    'id_surat' => $request->id_surat,
                    'image_kk' => $imagenamekk,
                    'image_bukti' => $imagenamebukti,
                    'id_masyarakat' => $masyarakat->id_masyarakat,
                ]);

                return response()->json([
                    'message' => 'Berhasil mengajukan surat',
                    'data' => $data
                ], 200);
            }
        }
    }

    public function suratmasuk(Request $request)
    {

        $rt = $request->input('rt'); // rt yang dipilih atau ditentukan
        $status = $request->input('status');
        $suratMasuk = MobilePengajuanSuratModel::select('pengajuan_surats.', 'master_surats.', 'master_masyarakats.*')
            ->join('master_masyarakats', 'pengajuan_surats.id_masyarakat', '=', 'master_masyarakats.id_masyarakat')
            ->join('master_surats', 'pengajuan_surats.id_surat', '=', 'master_surats.id_surat')
            ->where('pengajuan_surats.status', $status)
            ->whereHas('akun', function ($query) use ($rt) {
                $query->whereHas('kks', function ($query) use ($rt) {
                    $query->where('rt', $rt);
                });
            })
            ->with('surat')
            ->get();

        return response()->json([
            'message' => 'success',
            'data' => $suratMasuk,
        ], 200);
    }

    public function rekap(Request $request)
    {
        $rt = $request->input('rt'); // rt yang dipilih atau ditentukan
        $suratMasuk = MobilePengajuanSuratModel::select('pengajuan_surats.', 'master_akuns.id as id_akun', 'master_masyarakats.')
            ->join('master_akuns', 'pengajuan_surats.id', '=', 'master_akuns.id')
            ->join('master_masyarakats', 'master_akuns.id_masyarakat', '=', 'master_masyarakats.id_masyarakat')
            ->whereHas('akun.masyarakat', function ($query) use ($rt) {
                $query->whereHas('kks', function ($query) use ($rt) {
                    $query->where('rt', $rt);
                });
            })
            ->with('surat')
            ->get();

        return response()->json([
            'message' => 'success',
            'data' => $suratMasuk,
        ], 200);
    }

    public function statussurat(Request $request)
    {
        $no_kk = $request->input('no_kk');
        $status = $request->input('status');
        $statussurat = MobilePengajuanSuratModel::select('pengajuan_surats.', 'master_akuns.', 'master_masyarakat.*')
            ->join('master_akuns', 'pengajuan_surats.id', '=', 'master_akuns.id')
            ->join('master_masyarakats', 'master_akuns.id_masyarakat', '=', 'master_masyarakats.id_masyarakats')
            ->where('pengajuan_surats.status', $status)
            ->whereHas('akun.masyarakat', function ($query) use ($no_kk) {
                $query->where('no_kk', $no_kk);
            })
            ->with('surat')
            ->get();

        return response()->json([
            'message' => 'success',
            'data' => $statussurat,
        ], 200);
    }

    public function statusproses(Request $request)
    {
        $user = $request->user();
        $id_masyarakat = $user->id_masyarakat;

        $no_kk = MobileMasterKksModel::whereHas('masyarakat', function ($query) use ($id_masyarakat) {
            $query->where('id_masyarakat', $id_masyarakat);
        })->value('no_kk');

        $pengajuan_surats = MobilePengajuanSuratModel::with('surat', 'akun.masyarakat')
            ->where(function ($query) use ($id_masyarakat, $no_kk) {
                $query->where('id_masyarakat', $id_masyarakat)
                    ->orWhereHas('akun.masyarakat', function ($query) use ($no_kk) {
                        $query->where('no_kk', $no_kk);
                    });
            })
            ->whereNotIn('status', ['Selesai', 'Diajukan', 'Dibatalkan', 'Ditolak RT'])
            ->get();

        return response()->json([
            'message' => 'success',
            'data' => $pengajuan_surats,
        ], 200);
    }


    public function statusdiajukan(Request $request)
    {
        $user = $request->user();
        $id_masyarakat = $user->id_masyarakat;
        $status = $request->status;

        $no_kk = MobileMasterKksModel::whereHas('masyarakat', function ($query) use ($id_masyarakat) {
            $query->where('id_masyarakat', $id_masyarakat);
        })->value('no_kk');

        $pengajuan_surats = MobilePengajuanSuratModel::with('surat', 'akun.kks')
            ->where(function ($query) use ($id_masyarakat, $no_kk) {
                $query->where('id_masyarakat', $id_masyarakat)
                    ->orWhereHas('akun.kks', function ($query) use ($no_kk) {
                        $query->where('no_kk', $no_kk);
                    });
            })
            ->where('status', $status)
            ->get();

        return response()->json([
            'message' => 'success',
            'data' => $pengajuan_surats,
        ], 200);
    }

    public function statusditolak(Request $request)
    {
        $user = $request->user();
        $id_masyarakat = $user->id_masyarakat;

        $no_kk = MobileMasterKksModel::whereHas('masyarakat', function ($query) use ($id_masyarakat) {
            $query->where('id_masyarakat', $id_masyarakat);
        })->value('no_kk');

        // menggunakan query builder
        $pengajuan_surats = DB::table('pengajuan_surats')
            ->join('master_surats', 'pengajuan_surats.id_surat', '=', 'master_surats.id_surat')
            ->join('master_masyarakats', 'pengajuan_surats.id_masyarakat', '=', 'master_masyarakats.id_masyarakat')
            ->join('master_kks', 'master_masyarakats.id', '=', 'master_kks.id')
            ->where(function ($query) use ($id_masyarakat, $no_kk) {
                $query->where('pengajuan_surats.id_masyarakat', $id_masyarakat)
                    ->orWhere('master_kks.no_kk', '=', $no_kk);
            })
            ->whereIn('pengajuan_surats.status', ['Ditolak RT', 'Ditolak RW'])
            ->select('pengajuan_surats.', 'master_masyarakats.', 'master_surats.*')
            ->get();

        return response()->json([
            'message' => 'success',
            'data' => $pengajuan_surats,
        ], 200);
    }

    public function pembatalan(Request $request)
    {
        $request->validate([
            'nik' => 'required',
            'id_surat' => 'required',
        ]);
        $masyarakat = MobileMasterMasyarakatModel::where('nik', $request->nik)->first();

        if (!$masyarakat) {
            return response()->json([
                'message' => 'Nik tidak ditemukan',
            ], 400);
        }
        $existingSurat = MobilePengajuanSuratModel::where('id_surat', $request->id_surat)
            ->where('id_masyarakat', $masyarakat->id_masyarakat)
            ->first();
        if (!$existingSurat) {
            return response()->json([
                'message' => 'Surat tidak ditemukan',
            ], 400);
        }

        // Update the status of the record
        $pengajuan_surat = MobilePengajuanSuratModel::where('id_surat', $request->id_surat)
            ->where('id_masyarakat', $masyarakat->id_masyarakat)
            ->where('status', 'Diajukan')
            ->update(['status' => 'Dibatalkan', 'info' => 'non_active']);

        if ($pengajuan_surat) {
            return response()->json([
                'message' => 'Surat berhasil dibatalkan',
            ], 200);
        } else {
            return response()->json([
                'message' => 'Tidak ada surat dengan status Diajukan yang dapat dibatalkan',
            ], 400);
        }
    }
}
