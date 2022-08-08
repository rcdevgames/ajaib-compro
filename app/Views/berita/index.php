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

  <!-- ======= Contact Section ======= -->
  <section id="contact" class="contact">
    <div class="container">
      <div class="row mt-5">
        <?php foreach($berita as $berita) { ?>
         <div class="col-md-4">
           <div class="card" style="margin-bottom: 20px;">
            <img src="<?php echo base_url('assets/upload/image/'.$berita['gambar']) ?>">
            <div class="card-body">
              <?php if (getLang() == "id"): ?>
                <h3><?php echo $berita['judul_berita_id'] ?></h3>
              <?php else: ?>
                <h3><?php echo $berita['judul_berita'] ?></h3>
              <?php endif ?>
              <p class="card-text">
                <?php if (getLang() == "id"): ?>
                <?php echo $berita['ringkasan_id'] ?>
                <?php else: ?>
                <?php echo $berita['ringkasan'] ?>
                <?php endif ?>
              </p>
              <p>
                <a href="<?php echo base_url('berita/read/'.$berita['slug_berita']) ?>" class="btn btn-sm btn-success">
                  <i class="fa fa-chevron-right"></i>  <?=ucfirst(strtolower(lang('Global.newsBtnRead')))?>
                </a>
              </p>
            </div>
          </div>
         </div>
       <?php } ?>
      </div>
    </div>
  </section><!-- End Contact Section -->
</main><!-- End #main -->