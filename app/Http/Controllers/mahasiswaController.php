<?php

namespace App\Http\Controllers;
use App\ModelMhs;
use App\Http\TransformerMahasiswa;
use Illuminate\Http\Request;

class mahasiswaController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function index(){
		$data = ModelMhs::all();
		return response($data);
	}

	public function show($nim){
		$data = ModelMhs::where('nim',$nim)->get();
		return response ($data);
	}

	public function store(Request $request){
		$data = new ModelMhs();
		$data->nim = $request->input('nim');
		$data->namamhs = $request->input('namamhs');
		$data->alamat = $request->input('alamat');
		$data->email = $request->input('email');
		$data->tmpt_lahir = $request->input('tmpt_lahir');
		$data->tgl_lahir = $request->input('tgl_lahir');
		$data->jenjang = $request->input('jenjang');
		$data->notelp = $request->input('notelp');
		$data->save();

		return response('Berhasil Tambah Data');
	}
	
	public function update(Request $request, $nim){
		$data = ModelMhs::where('nim',$nim)->first();
		$data->nim = $request->input('nim');
		$data->namamhs = $request->input('namamhs');
		$data->alamat = $request->input('alamat');
		$data->email = $request->input('email');
		$data->tmpt_lahir = $request->input('tmpt_lahir');
		$data->tgl_lahir = $request->input('tgl_lahir');
		$data->jenjang = $request->input('jenjang');
		$data->notelp = $request->input('notelp');
		$data->save();

		return response('Berhasil Merubah Data');
	}

	public function destroy($nim){
		$data = ModelMhs::where('nim',$nim)->first();
		$data->delete();

		return response('Berhasil Menghapus Data');
	}
	
}