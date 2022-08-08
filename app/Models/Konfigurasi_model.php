<?php 
namespace App\Models;

use CodeIgniter\Model;

class Konfigurasi_model extends Model
{

    protected $table = 'konfigurasi';
    protected $primaryKey = 'id_konfigurasi';
    protected $allowedFields = [];

    // Listing
    public function listing()
    {
        $lang = getLang();
        $query = $this->asArray()->first();
        if ($lang == 'id') {
            $query['tagline'] = $query['tagline_id'];
            $query['tentang'] = $query['tentang_id'];
            $query['deskripsi'] = $query['deskripsi_id'];
        }
        return $query;
    }

    // tambah
    public function edit($data)
    {
        $builder = $this->db->table('konfigurasi');
        $builder->where('id_konfigurasi',$data['id_konfigurasi']);
        $builder->update($data);
    }
}