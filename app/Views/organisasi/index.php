<main id="main">
  <!-- ======= Breadcrumbs Section ======= -->
  <section class="breadcrumbs">
    <div class="container">
      <div class="d-flex justify-content-between align-items-center">
        <h2><?php echo $title ?></h2>
        <ol>
          <li><a href="<?php echo base_url() ?>"><?=ucfirst(strtolower(lang('Global.menuHome')))?></a></li>
          <li><?php echo $title ?></li>
        </ol>
      </div>
    </div>
  </section><!-- End Breadcrumbs Section -->

 <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2><?php echo $title ?></h2>
        </div>

        <div style="display: flex; justify-content: center;">
          <img src="<?=organization()?>" class="img img-thumbnail">
        </div>
      </div>
    </section><!-- End Gallery Section -->