<?php
namespace App\Http\Transformers;

use League\Fractal\TransformerAbstract;
use App\Http\Models\Mahasiswa;

class TransformerMahasiswa extends TransformerAbstract
{
  public function transform(Mahasiswa $field)
  {
    // ngubah format tampilan di postman
    return [
      'nim' => $field->nim,
      'nm_mhs' => $field->nm_mhs,
      'fakultas' => $field->fakultas,
      'jk' => $field->jk,
      'prodi' => $field->prodi,
      'agama' => $field->agama,
      'notlp' => $field->notlp,
      'alamat' => $field->alamat
    ];
  }
}