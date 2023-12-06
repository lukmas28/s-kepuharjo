<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMasterMasyarakatsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('master_masyarakats', function (Blueprint $table) {
            // // $table->id();

            // $table->integer('id_kk');
            // // $table->uuid('uuid');
            // $table->foreignuuid('id');
            $table->uuid('id_masyarakat')->primary();
            // $table->bigInteger('no_kk' ,)->nullable()->default(12);
            $table->bigInteger('nik')->nullable();
            $table->unique('nik');
            $table->string('nama_lengkap', 100)->nullable();
            $table->string('jenis_kelamin', 16)->nullable();
            $table->string('tempat_lahir', 50)->nullable();
            $table->date('tgl_lahir')->nullable();
            $table->string('agama', 20)->nullable();
            $table->string('pendidikan', 60)->nullable();
            $table->string('pekerjaan', 60)->nullable();
            $table->string('golongan_darah', 12)->nullable();
            $table->string('status_perkawinan', 20)->nullable();
            $table->date('tgl_perkawinan')->nullable();
            $table->string('status_keluarga', 20)->nullable();
            $table->string('kewarganegaraan', 20)->nullable();
            $table->integer('no_paspor')->unsigned()->nullable();
            $table->integer('no_kitap')->unsigned()->nullable();
            $table->string('nama_ayah', 60)->nullable();
            $table->string('nama_ibu', 60)->nullable();
            $table->timestamps();
            $table->uuid('id');
            $table->Foreign('id')->references('id')->on('master_kks');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('master_masyarakats');
    }
}
