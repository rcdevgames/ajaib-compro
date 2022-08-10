<?php
namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\Konfigurasi_model;
use App\Models\Organisasi_model;

class Organisasi extends BaseController {

	public function index()
	{
		$m_konfigurasi 	= new Konfigurasi_model();
		$m_organisasi 	= new Organisasi_model();
		$konfigurasi 	= $m_konfigurasi->listing();
		$organisasi 	= $m_organisasi->listing();

		$data = [	'title'			=> lang('Global.orgTitle'),
					'description'	=> lang('Global.orgTitle').' '.$konfigurasi['namaweb'],
					'keywords'		=> lang('Global.orgTitle').' '.$konfigurasi['namaweb'],
					'organisasi'	=> $organisasi,
					'content'		=> 'organisasi/index'
				];
		echo view('layout/wrapper',$data);
	}

}

/* End of file Organisasi.php */
/* Location: .//Users/rmodz/MyProject/Web-PHP/ajaib/app/Controllers/Organisasi.php */