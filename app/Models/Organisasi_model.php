<?php 
namespace App\Models;

use CodeIgniter\Model;

class Organisasi_model extends Model {

	protected $table = 'organisasi';
    protected $primaryKey = 'id';
    protected $allowedFields = ['id','gambar'];

    public function listing()
    {
    	return $this->asArray()->first();
    }

    public function edit($data)
    {
        $builder = $this->db->table('organisasi');
        $builder->where('id',$data['id']);
        $builder->update($data);
    }

}

/* End of file Organisasi_model.php */
/* Location: .//Users/rmodz/MyProject/Web-PHP/ajaib/app/Models/Organisasi_model.php */