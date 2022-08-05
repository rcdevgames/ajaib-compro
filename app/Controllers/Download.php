<?php 
namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\Konfigurasi_model;
use App\Models\Download_model;

class Download extends BaseController
{
	// Download
	public function index()
	{
		$m_konfigurasi 	= new Konfigurasi_model();
		$m_download		= new Download_model();
		$konfigurasi 	= $m_konfigurasi->listing();
		$download 		= $m_download->jenis_download('Download');

		$data = [	'title'			=> ucfirst(strtolower(lang('Global.downloadTitle'))),
					'description'	=> ucfirst(strtolower(lang('Global.downloadTitle'))).$konfigurasi['namaweb'].', '.$konfigurasi['tentang'],
					'keywords'		=> ucfirst(strtolower(lang('Global.downloadTitle'))).$konfigurasi['namaweb'].', '.$konfigurasi['keywords'],
					'download'		=> $download,
					'konfigurasi'	=> $konfigurasi,
					'content'		=> 'download/index'
				];
		echo view('layout/wrapper',$data);
	}

	// Unduh
	public function unduh($id_download)
	{
		$m_download 			= new Download_model();
		$download 				= $m_download->detail($id_download);
		// Update hits
		$data = [ 	'id_download'	=> $download['id_download'],
					'hits'			=> $download['hits']+1
				];
		$m_download->edit($data);
		// Update hits
		return $this->response->download('../assets/upload/file/'.$download['gambar'], null);
	}
}