<?php 
namespace App\Controllers\Admin;

use CodeIgniter\Controller;
use App\Models\Konfigurasi_model;

class Konfigurasi extends BaseController
{

	// mainpage
	public function index()
	{
		checklogin();
		$m_konfigurasi 	= new Konfigurasi_model();
		$konfigurasi 	= $m_konfigurasi->listing();
		$id_konfigurasi = $konfigurasi['id_konfigurasi'];
		// Start validasi
		if($this->request->getMethod() === 'post' && $this->validate(
			[
            'namaweb' 	=> 'required|min_length[3]',
        	])) {
			// masuk database
			$data = [	'id_konfigurasi'	=> $konfigurasi['id_konfigurasi'],
						'id_user'			=> $this->session->get('id_user'),
						'namaweb'			=> $this->request->getPost('namaweb'),
						'singkatan'			=> $this->request->getPost('singkatan'),
						'tagline_id'		=> $this->request->getPost('tagline_id'),
						'tagline'			=> $this->request->getPost('tagline'),
						'tentang_id'		=> $this->request->getPost('tentang_id'),
						'tentang'			=> $this->request->getPost('tentang'),
						'deskripsi_id'		=> $this->request->getPost('deskripsi_id'),
						'deskripsi'			=> $this->request->getPost('deskripsi'),
						'website'			=> $this->request->getPost('website'),
						'email'				=> $this->request->getPost('email'),
						'email_cadangan'	=> $this->request->getPost('email_cadangan'),
						'alamat'			=> $this->request->getPost('alamat'),
						'telepon'			=> $this->request->getPost('telepon'),
						'hp'				=> $this->request->getPost('hp'),
						'facebook'			=> $this->request->getPost('facebook'),
						'twitter'			=> $this->request->getPost('twitter'),
						'instagram'			=> $this->request->getPost('instagram'),
						'youtube'			=> $this->request->getPost('youtube'),
						'nama_facebook'		=> $this->request->getPost('nama_facebook'),
						'nama_twitter'		=> $this->request->getPost('nama_twitter'),
						'nama_instagram'	=> $this->request->getPost('nama_instagram'),
						'nama_youtube'		=> $this->request->getPost('nama_youtube'),
						'google_map'		=> $this->request->getPost('google_map')
					];
			$m_konfigurasi->edit($data);
			// masuk database
			$this->session->setFlashdata('sukses','Data telah diupdate');
			return redirect()->to(base_url('admin/konfigurasi'));
	    }else{
			$data = [	'title'			=> 'Konfigurasi Website',
						'konfigurasi'	=> $konfigurasi,
						'content'		=> 'admin/konfigurasi/index'
					];
			echo view('admin/layout/wrapper',$data);
		}
	}

	// seo
	public function seo()
	{
		checklogin();
		$m_konfigurasi 	= new Konfigurasi_model();
		$konfigurasi 	= $m_konfigurasi->listing();
		$id_konfigurasi = $konfigurasi['id_konfigurasi'];
		// Start validasi
		if($this->request->getMethod() === 'post' && $this->validate(
			[
            'id_konfigurasi' 	=> 'required',
        	])) {
			// masuk database
			$data = [	'id_konfigurasi'	=> $konfigurasi['id_konfigurasi'],
						'id_user'			=> $this->session->get('id_user'),
						'keywords'			=> $this->request->getPost('keywords'),
						'metatext'			=> $this->request->getPost('metatext')
					];
			$m_konfigurasi->edit($data);
			// masuk database
			$this->session->setFlashdata('sukses','Data telah diupdate');
			return redirect()->to(base_url('admin/konfigurasi/seo'));
	    }else{
			$data = [	'title'			=> 'Konfigurasi SEO Website',
						'konfigurasi'	=> $konfigurasi,
						'content'		=> 'admin/konfigurasi/seo'
					];
			echo view('admin/layout/wrapper',$data);
		}
	}

	// logo
	public function logo()
	{
		checklogin();
		$m_konfigurasi 	= new Konfigurasi_model();
		$konfigurasi 	= $m_konfigurasi->listing();
		$id_konfigurasi = $konfigurasi['id_konfigurasi'];
		// Start validasi
		if($this->request->getMethod() === 'post' && $this->validate([
			'id_konfigurasi' => 'required',
			'logo'	 		=> [
                'mime_in[logo,image/jpg,image/jpeg,image/gif,image/png]',
                'max_size[logo,200000]',
            ],
		])) {
			// Image upload
			$avatar  	= $this->request->getFile('logo');
			$namabaru 	= $avatar->getName();
            $avatar->move(WRITEPATH . '../assets/upload/image/',$namabaru);
            // Create thumb
            $image = \Config\Services::image()
		    ->withFile(WRITEPATH . '../assets/upload/image/'.$namabaru)
		    ->fit(100, 100, 'center')
		    ->save(WRITEPATH . '../assets/upload/image/thumbs/'.$namabaru);
        	// masuk database
			$data = [	'id_konfigurasi'	=> $konfigurasi['id_konfigurasi'],
						'id_user'			=> $this->session->get('id_user'),
						'logo'				=> $namabaru
					];
			$m_konfigurasi->edit($data);
			// masuk database
			$this->session->setFlashdata('sukses','Data telah diupdate');
			return redirect()->to(base_url('admin/konfigurasi/logo'));
        }else{
        	// End validasi
			$data = [	'title'			=> 'Update Logo Website',
						'konfigurasi'	=> $konfigurasi,
						'content'		=> 'admin/konfigurasi/logo'
					];
			echo view('admin/layout/wrapper',$data);
        }		
	}

	// icon
	public function icon()
	{
		checklogin();
		$m_konfigurasi 	= new Konfigurasi_model();
		$konfigurasi 	= $m_konfigurasi->listing();
		$id_konfigurasi = $konfigurasi['id_konfigurasi'];
		// Start validasi
		if($this->request->getMethod() === 'post' && $this->validate([
			'id_konfigurasi' => 'required',
			'icon'	 		=> [
                'mime_in[icon,image/jpg,image/jpeg,image/gif,image/png]',
                'max_size[icon,200000]',
            ],
		])) {
			// Image upload
			$avatar  	= $this->request->getFile('icon');
			$namabaru 	= $avatar->getName();
            $avatar->move(WRITEPATH . '../assets/upload/image/',$namabaru);
            // Create thumb
            $image = \Config\Services::image()
		    ->withFile(WRITEPATH . '../assets/upload/image/'.$namabaru)
		    ->fit(100, 100, 'center')
		    ->save(WRITEPATH . '../assets/upload/image/thumbs/'.$namabaru);
        	// masuk database
			$data = [	'id_konfigurasi'	=> $konfigurasi['id_konfigurasi'],
						'id_user'			=> $this->session->get('id_user'),
						'icon'				=> $namabaru
					];
			$m_konfigurasi->edit($data);
			// masuk database
			$this->session->setFlashdata('sukses','Data telah diupdate');
			return redirect()->to(base_url('admin/konfigurasi/icon'));
        }else{
        	// End validasi
			$data = [	'title'			=> 'Update Icon Website',
						'konfigurasi'	=> $konfigurasi,
						'content'		=> 'admin/konfigurasi/icon'
					];
			echo view('admin/layout/wrapper',$data);
        }		
	}
}