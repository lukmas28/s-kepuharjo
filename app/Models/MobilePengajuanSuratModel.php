<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MobilePengajuanSuratModel extends Model
{
    use HasFactory;

    protected $table = 'pengajuan_surats';

    protected $fillable = ['id_masyarakat', 'id_surat', 'keterangan', 'id', 'status', 'file_pdf', 'info', 'image_kk', 'image_bukti'];

    public $timestamps = true;

    public function akun()
    {
        return $this->belongsTo(MobileMasterMasyarakatModel::class, 'id_masyarakat', 'id_masyarakat');
    }

    public function surat()
    {
        return $this->belongsTo(MobileMasterSuratModel::class, 'id_surat', 'id_surat');
    }

    public function pengajuan()
    {
        return $this->hasOne(MobileMasterMasyarakatModel::class, 'id_masyarakat', 'id_masyarakat')
            ->join('master_kks', 'master_kks.id', '=', 'master_masyarakats.id')
            ->join('master_surats', 'id_surat', '=', 'id_surat');
    }
}
