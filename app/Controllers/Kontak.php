<?php 
namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\Konfigurasi_model;
use App\Models\Galeri_model;

class Kontak extends BaseController
{
	// Kontak
	public function index()
	{
		$m_konfigurasi 	= new Konfigurasi_model();
		$m_galeri		= new Galeri_model();
		$konfigurasi 	= $m_konfigurasi->listing();
		$slider 		= $m_galeri->slider();

		$data = [	'title'			=> ucfirst(strtolower(lang('Global.contactTitle'))),
					'description'	=> ucfirst(strtolower(lang('Global.contactTitle'))).$konfigurasi['namaweb'].', '.$konfigurasi['tentang'],
					'keywords'		=> ucfirst(strtolower(lang('Global.contactTitle'))).$konfigurasi['namaweb'].', '.$konfigurasi['keywords'],
					'slider'		=> $slider,
					'konfigurasi'	=> $konfigurasi,
					'content'		=> 'kontak/index'
				];
		echo view('layout/wrapper',$data);
	}
}