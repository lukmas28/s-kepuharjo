<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;
use Laravel\Sanctum\HasApiTokens;

class MobileMasterAkunModel extends Model
{
    use HasApiTokens;

    protected $table = 'master_akuns';

    protected $fillable = [
        'id', 'password', 'no_hp', 'role', 'id_masyarakat',
    ];

    protected static function boot()
    {
        parent::boot();
        static::creating(function ($model) {
            if (empty($model->{$model->getKeyName()})) {
                $model->{$model->getKeyName()} = Str::uuid()->toString();
            }
        });
    }

    /**
     * Kita override getIncrementing method
     *
     * Menonaktifkan auto increment
     */
    public function getIncrementing()
    {
        return false;
    }

    /**
     * Kita override getKeyType method
     *
     * Memberi tahu laravel bahwa model ini menggunakan primary key bertipe string
     */
    public function getKeyType()
    {
        return 'string';
    }

    public function user()
    {
        return $this->hasOne(MobileMasterMasyarakatModel::class, 'id_masyarakat', 'id_masyarakat')
            ->join('master_kks', 'master_kks.id', '=', 'master_masyarakats.id');
    }

    public function masyarakat()
    {
        return $this->belongsTo(MobileMasterMasyarakatModel::class, 'id_masyarakat', 'id_masyarakat');
    }
}
