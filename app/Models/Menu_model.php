<?php namespace App\Models;

use CodeIgniter\Model;

class Menu_model extends Model
{


    // Menu berita
    public function berita()
    {
        $builder = $this->db->table('berita');
        $builder->select('berita.id_kategori,berita.icon, berita.ringkasan, berita.ringkasan_id, berita.gambar, kategori.nama_kategori, kategori.nama_kategori_id, kategori.slug_kategori');
        $builder->join('kategori', 'kategori.id_kategori = berita.id_kategori');
        $builder->where(array('status_berita'    => 'Publish','jenis_berita' => 'Berita'));
        $builder->groupBy('berita.id_kategori');
        $query = $builder->get();
        return $query->getResultArray();
    }

    // Menu link
    public function link()
    {
        $builder = $this->db->table('berita');
        $builder->select('berita.judul_berita, berita.judul_berita_id, berita.icon, berita.ringkasan, berita.ringkasan_id, berita.gambar, berita.slug_berita, berita.id_berita');
        $builder->where(array('status_berita'    => 'Publish','jenis_berita' => 'Link'));
        $query = $builder->get();
        return $query->getResultArray();
    }

    // Menu profil
    public function profil()
    {
        $builder = $this->db->table('berita');
        $builder->select('berita.judul_berita, berita.judul_berita_id, berita.icon, berita.ringkasan, berita.ringkasan_id, berita.gambar, berita.slug_berita, berita.id_berita');
        $builder->where(array('status_berita'    => 'Publish','jenis_berita' => 'Profil'));
        $query = $builder->get();
        return $query->getResultArray();
    }

    // Menu layanan
    public function layanan()
    {
        $builder = $this->db->table('berita');
        $builder->select('berita.judul_berita, berita.judul_berita_id, berita.icon, berita.ringkasan, berita.ringkasan_id, berita.gambar, berita.slug_berita, berita.id_berita, berita.gambar');
        $builder->where(array('status_berita'    => 'Publish','jenis_berita' => 'Layanan'));
        $query = $builder->get();
        return $query->getResultArray();
    }
}