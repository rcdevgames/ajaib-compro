<main id="main">
  <!-- ======= Breadcrumbs Section ======= -->
  <section class="breadcrumbs">
    <div class="container">
      <div class="d-flex justify-content-between align-items-center">
        <h2>
          <?php if (getLang() == "id"): ?>
              <?php echo $berita['judul_berita_id'] ?>
            <?php else: ?>
              <?php echo $berita['judul_berita'] ?>
            <?php endif ?>
        </h2>
        <ol>
          <li><a href="<?php echo base_url() ?>"><?=ucfirst(strtolower(lang('Global.menuHome')))?></a></li>
          <li>
            <?php if (getLang() == "id"): ?>
              <?php echo $berita['judul_berita_id'] ?>
            <?php else: ?>
              <?php echo $berita['judul_berita'] ?>
            <?php endif ?>
          </li>
        </ol>
      </div>
    </div>
  </section><!-- End Breadcrumbs Section -->

  <!-- ======= Contact Section ======= -->
  <section id="contact" class="contact">
    <div class="container">
      <div class="row mt-2">

         <div class="col-md-4">
           <img src="<?php echo base_url('assets/upload/image/'.$berita['gambar']) ?>" class="img img-thumbnail">
         </div>
         <div class="col-md-8">
          <div class="card">
            <div class="card-header">
              <h1>
              <?php if (getLang() == "id"): ?>
                <?php echo $berita['judul_berita_id'] ?>
              <?php else: ?>
                <?php echo $berita['judul_berita'] ?>
              <?php endif ?>
              </h1>
            </div>
            <div class="card-body">
              <?php if (getLang() == "id"): ?>
                <?php echo $berita['isi_id'] ?>
              <?php else: ?>
                <?php echo $berita['isi'] ?>
              <?php endif ?>
            </div>
            <div class="card-footer">
              <?=lang('Global.comUpdated')?>: <?php echo $berita['nama'] ?> | <?=lang('Global.comDate')?>: <?php echo getLang() == "id" ? tanggal_bulan_menit($berita['tanggal']) : tanggal_bulan_menit_en($berita['tanggal']) ?>
            </div>
          </div>
          
         </div>

      </div>
    </div>
  </section><!-- End Contact Section -->
</main><!-- End #main -->