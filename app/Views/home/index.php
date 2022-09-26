<?php 
use App\Models\Menu_model;
$menu         = new Menu_model();
$berita       = $menu->berita();
$link       = $menu->link();
$layanan      = $menu->layanan();
?>

<!-- ======= Hero Section ======= -->
  <section id="hero">
    <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

      <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

      <div class="carousel-inner" role="listbox">
        <?php $noslide=1; foreach($slider as $slider) {  ?>
        <!-- Slide 1 -->
        <div class="carousel-item<?php if($noslide==1) { echo ' active'; } ?>" style="background-color: white;align-items: center;">
          <img src="<?php echo base_url('assets/upload/image/'.$slider['gambar']) ?>" style="width: 100%;object-fit: cover;"/>
        </div>
        <?php $noslide++;} ?>

      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
      </a>

    </div>
  </section><!-- End Hero -->


  <main id="main">

    <!-- ======= Featured Services Section ======= -->
    <section id="featured-services" class="featured-services">
      <div class="container" data-aos="fade-up">
        
        <div class="row">
          <?php $pr = 1; foreach($link as $link) { ?>
          <div class="col-md-4 col-lg-3 text-center d-flex align-items-stretch mb-5 mb-lg-0" style="padding: calc(var(--bs-gutter-x)/ 2);">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="<?php echo $pr ?>00" style="width: 100%;">
              <div class="icon"><img src="<?php echo base_url('assets/upload/image/thumbs/'.$link['gambar']) ?>"/></div>
              <h4 class="title"><?php echo $link['judul_berita'] ?></h4>
              <p class="description"><?php echo $link['ringkasan'] ?></p>
            </div>
          </div>
          <?php $pr++; } ?>
        </div>
      </div>
    </section><!-- End Featured Services Section -->

    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container" data-aos="zoom-in">

        <div class="text-center">
          <h3><?=lang('Global.homeWelcome')?> <?php echo $konfigurasi['namaweb'] ?></h3>
          <p><?php echo $konfigurasi['tagline'] ?></p>
        </div>

      </div>
    </section><!-- End Cta Section -->

    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2><?=lang('Global.homeAbout')?> <?php echo $konfigurasi['namaweb'] ?></h2>
         <?php echo $konfigurasi['deskripsi'] ?>
        </div>

        <div class="row">
          <div class="col-lg-4" data-aos="fade-right">
            <img src="<?php echo icon() ?>" class="img-fluid" alt="">
          </div>
          <div class="col-lg-8 pt-4 pt-lg-0 content" data-aos="fade-left">
            <?php echo $konfigurasi['tentang'] ?>
          </div>
        </div>

      </div>
    </section><!-- End About Us Section -->

  

    <!-- ======= Services Section ======= -->
    <section id="services" class="services services">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Proyek Kami</h2>
        </div>

        <div class="row mt-5">
          <?php $ml = 1; foreach($layanan as $layanan) { ?>
          <div class="col-md-4">
            <div class="card" style="margin-bottom: 20px;">
              <img src="<?php echo base_url('assets/upload/image/'.$layanan['gambar']) ?>">
              <div class="card-body">
                <?php if (getLang() == "id"): ?>
                  <h3><?php echo $layanan['judul_berita_id'] ?></h3>
                <?php else: ?>
                  <h3><?php echo $layanan['judul_berita'] ?></h3>
                <?php endif ?>
                <p class="card-text">
                  <?php if (getLang() == "id"): ?>
                  <?php echo $layanan['ringkasan_id'] ?>
                  <?php else: ?>
                  <?php echo $layanan['ringkasan'] ?>
                  <?php endif ?>
                </p>
                <p>
                  <a href="<?php echo base_url('berita/proyek/'.$layanan['slug_berita']) ?>" class="btn btn-sm btn-success">
                    <i class="fa fa-chevron-right"></i>  <?=ucfirst(strtolower(lang('Global.newsBtnRead')))?>
                  </a>
                </p>
              </div>
            </div>
          </div>
          <?php $ml++; } ?>
        </div>

      </div>
    </section><!-- End Services Section -->

    <?php include('client.php') ?>

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div>
        <style type="text/css" media="screen">
          iframe {
            min-height: 300px;
            width: 100%;
          }
        </style>
        <?php echo google_map() ?>
      </div>
    </section><!-- End Contact Section -->
</main><!-- End #main -->
