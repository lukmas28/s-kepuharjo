<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AdminPengajuanModel extends Model
{
    protected $table = 'pengajuan_surats';

    public function pengajuan()
    { return $this->join('master_surats', 'pengajuan_surats.id_surat', '=', 'master_surats.id_surat')
        ->join('master_masyarakats', 'master_masyarakats.id_masyarakat', '=', 'pengajuan_surats.id_masyarakat')
        ->join('master_kks', 'master_masyarakats.id', '=', 'master_kks.id')
        ->join('master_akuns', 'master_masyarakats.id_masyarakat', '=', 'master_akuns.id_masyarakat')
        ->select('master_kks.*', 'master_masyarakats.*', 'pengajuan_surats.id', 'pengajuan_surats.status','pengajuan_surats.no_pengantar', 'pengajuan_surats.keterangan', 'pengajuan_surats.created_at', 'pengajuan_surats.image_kk', 'pengajuan_surats.image_bukti','master_akuns.no_hp', 'pengajuan_surats.nomor_surat', 'master_akuns.no_hp','master_surats.id_surat', 'master_surats.nama_surat');
    }
}
