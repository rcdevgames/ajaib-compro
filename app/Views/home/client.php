<!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2><?=lang('Global.clientTestimonials')?></h2>
        </div>

        <div class="testimonials-slider swiper-container" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <?php foreach($client as $client) { ?>
            <div class="swiper-slide">
              <div class="testimonial-item">
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  <?php if (getLang() == "id"): ?>
                  <?php echo $client['isi_testimoni_id'] ?>
                  <?php else: ?>
                  <?php echo $client['isi_testimoni'] ?>
                  <?php endif ?>
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
                <img src="<?php echo base_url('assets/upload/client/thumbs/'.$client['gambar']) ?>" class="testimonial-img" alt="">
                <h3><?php echo $client['nama'] ?></h3>
                <h4><?php echo $client['pimpinan'] ?></h4>
              </div>
            </div>
            <!-- End testimonial item -->
          <?php } ?>
            

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->