

<!-- ======= Contact Section ======= -->
  <section id="contact" class="contact">
    <div class="container">
      <div class="row mt-5">
        <div class="col-md-12 text-center">
          <h2><?=lang('Global.newsLatest')?></h2>
          <hr>
        </div>
        <?php foreach($berita2 as $berita2) { ?>
         <div class="col-md-4">
           <div class="card" style="margin-bottom: 20px;">
            <img src="<?php echo base_url('assets/upload/image/'.$berita2['gambar']) ?>">
            <div class="card-body">
              <?php if (getLang() == "id"): ?>
              <h3><?php echo $berita2['judul_berita_id'] ?></h3>
              <?php else: ?>
              <h3><?php echo $berita2['judul_berita'] ?></h3>
              <?php endif ?>
              <p class="card-text">
                <?php if (getLang() == "id"): ?>
                <?php echo $berita2['ringkasan_id'] ?>
                <?php else: ?>
                <?php echo $berita2['ringkasan'] ?>
                <?php endif ?>
              </p>
              <hr>
              <p>
                <a href="<?php echo base_url('berita/read/'.$berita2['slug_berita']) ?>" class="btn btn-success">
                  <i class="fa fa-chevron-right"></i>  <?=lang('Global.newsRead')?>
                </a>
              </p>
            </div>
          </div>
         </div>
       <?php } ?>
      </div>
    </div>
  </section><!-- End Contact Section -->