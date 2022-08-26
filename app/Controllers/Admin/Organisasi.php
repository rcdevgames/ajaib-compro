<?php 
namespace App\Controllers\Admin;

use CodeIgniter\Controller;
use App\Models\Organisasi_model;

class Organisasi extends BaseController
{
	public function index()
	{
		checklogin();
		$m_organisasi = new Organisasi_model();
		$organisasi = $m_organisasi->listing();
		$id_organisasi = $organisasi['id'];

		if($this->request->getMethod() === 'post' && $this->validate([
            'id' => 'required',
			'gambar'	 		=> [
                'mime_in[gambar,image/jpg,image/jpeg,image/gif,image/png]',
                'max_size[gambar,200000]',
            ],
    	])) {
			// Image upload
			$avatar  	= $this->request->getFile('gambar');
			$namabaru 	= $avatar->getName();
            $avatar->move(WRITEPATH . '../assets/upload/image/',$namabaru);
            // Create thumb
            $image = \Config\Services::image()
		    ->withFile(WRITEPATH . '../assets/upload/image/'.$namabaru)
		    ->fit(100, 100, 'center')
		    ->save(WRITEPATH . '../assets/upload/image/thumbs/'.$namabaru);
        	// masuk database
			$data = [	'id'			=> $id_organisasi,
						'gambar'		=> $namabaru,
						'updated_by'	=> $this->session->get('username'),
						'updated_date'	=> date('Y-m-d H:i:s')
					];
			$m_organisasi->edit($data);
			// masuk database
			$this->session->setFlashdata('sukses','Data telah diupdate');
			return redirect()->to(base_url('admin/organisasi'));
    	}else {
    		$data = [	
				'title'			=> 'Struktur Organisasi',
				'organisasi'	=> $organisasi,
				'content'		=> 'admin/organisasi/index'
			];
			echo view('admin/layout/wrapper',$data);
    	}
	}
}