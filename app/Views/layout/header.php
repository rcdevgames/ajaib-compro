<?php 
use App\Models\Konfigurasi_model;
use App\Models\Menu_model;
$konfigurasi  = new Konfigurasi_model;
$menu         = new Menu_model();
$site         = $konfigurasi->listing();
$menu_berita  = $menu->berita();
$menu_profil  = $menu->profil();
$menu_layanan  = $menu->layanan();
?>
<!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex align-items-center justify-content-center justify-content-md-between">
      <div class="align-items-center d-none d-md-flex">
        <i class="fa fa-home"></i> <?php echo tagline(); ?>
      </div>
      <div class="d-flex align-items-center">
        <!-- <i class="fa fa-phone-alt"></i> <?php echo telepon() ?> -->
        <a href="<?=base_url('bahasa/id')?>" title="Indonesia" style="color: white;font-family: Roboto, sans-serif; padding-right: 10px;">
          <img src="<?=base_url('assets/template/assets/img/id.png')?>" style="height: 20px;width: 20px;">
          ID
        </a>
        <a href="<?=base_url('bahasa/en')?>" title="English" style="color: white;font-family: Roboto, sans-serif;">
          <img src="<?=base_url('assets/template/assets/img/uk.png')?>" style="height: 20px;width: 20px;">
          EN
        </a>
      </div>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <a href="<?=base_url()?>" class="logo me-auto"><img src="<?php echo base_url('assets/upload/image/'.$site['logo']) ?>" alt="<?php echo $site['namaweb'] ?>"></a>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <h1 class="logo me-auto"><a href="index.html">Medicio</a></h1> -->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <!-- <li><a class="nav-link scrollto " href="<?php echo base_url() ?>">Home</a></li> -->
          <li class="dropdown"><a href="#"><span><?=lang('Global.menuProfile')?></span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <?php foreach($menu_profil as $menu_profil) { ?>
              <li><a href="<?php echo base_url('berita/profil/'.$menu_profil['slug_berita']) ?>"><?php echo $menu_profil['judul_berita'] ?></a></li>
              <?php } ?>
              <li><a href="<?php echo base_url('staff') ?>"><?=ucfirst(strtolower(lang('Global.menuTeam')))?></a></li>
            </ul>
          </li>
          
          <li class="dropdown"><a href="#"><span><?=lang('Global.menuInformation')?></span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="<?php echo base_url('berita') ?>"><?=ucfirst(strtolower(lang('Global.menuNews')))?></a></li>
              <li><a href="<?php echo base_url('galeri') ?>"><?=ucfirst(strtolower(lang('Global.menuGalery')))?></a></li>
              <li><a href="<?php echo base_url('download') ?>"><?=ucfirst(strtolower(lang('Global.menuDownload')))?></a></li>
            </ul>
          </li>
          <li class="dropdown"><a href="#"><span><?=lang('Global.menuProject')?></span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <?php foreach($menu_layanan as $menu_layanan) { ?>
              <li><a href="<?php echo base_url('berita/layanan/'.$menu_layanan['slug_berita']) ?>"><?php echo $menu_layanan['judul_berita'] ?></a></li>
              <?php } ?>
            </ul>
          </li>
          <li><a class="nav-link scrollto" href="<?php echo base_url('client') ?>"><?=lang('Global.menuClient')?></a></li>
          <li><a class="nav-link scrollto" href="<?php echo base_url('kontak') ?>"><?=lang('Global.menuContact')?></a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <!-- <a href="<?php echo base_url('login') ?>" class="appointment-btn scrollto">
        Login <span class="d-none d-md-inline">Admin</span>
      </a> -->

    </div>
  </header><!-- End Header -->