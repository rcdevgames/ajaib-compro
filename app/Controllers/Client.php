<?php 
namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\Konfigurasi_model;
use App\Models\Client_model;

class Client extends BaseController
{
	// Client
	public function index()
	{
		$m_konfigurasi 	= new Konfigurasi_model();
		$m_client		= new Client_model();
		$konfigurasi 	= $m_konfigurasi->listing();
		$client 		= $m_client->listing();

		$data = [	'title'			=> lang('Global.clientTitle'),
					'description'	=> lang('Global.clientTitle').$konfigurasi['namaweb'].', '.$konfigurasi['tentang'],
					'keywords'		=> lang('Global.clientTitle').$konfigurasi['namaweb'].', '.$konfigurasi['keywords'],
					'client'		=> $client,
					'konfigurasi'	=> $konfigurasi,
					'content'		=> 'client/index'
				];
		echo view('layout/wrapper',$data);
	}
}