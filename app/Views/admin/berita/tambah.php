<form action="<?php echo base_url('admin/berita/tambah') ?>" method="post" accept-charset="utf-8" enctype="multipart/form-data">
<?php 
echo csrf_field(); 
?>

<div class="form-group row">
	<label class="col-md-2">Judul Berita (ID)</label>
	<div class="col-md-10">
		<input type="text" name="judul_berita_id" class="form-control" value="<?php echo set_value('judul_berita_id') ?>" required>
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2">News Title (EN)</label>
	<div class="col-md-10">
		<input type="text" name="judul_berita" class="form-control" value="<?php echo set_value('judul_berita') ?>" required>
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2">Upload Gambar Berita</label>
	<div class="col-md-10">
		<input type="file" name="gambar" class="form-control" value="<?php echo set_value('gambar') ?>">
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2">Kategori, Jenis &amp; Status</label>
	<div class="col-md-2">
		<select name="id_kategori" class="form-control">
			<?php foreach($kategori as $kategori) { ?>
			<option value="<?php echo $kategori['id_kategori'] ?>">
				<?php echo $kategori['nama_kategori'] ?>
			</option>
			<?php } ?>
		</select>
		<small class="text-secondary">Kategori</small>
	</div>
	<div class="col-md-2">
		<select name="jenis_berita" class="form-control" id="jenis_berita">
			<option value="Berita">Berita</option>
			<option value="Layanan">Proyek</option>
			<option value="Profil">Profil</option>
			<option value="Link">Link</option>
		</select>
		<small class="text-secondary">Jenis konten</small>
	</div>
	<div class="col-md-2">
		<select name="status_berita" class="form-control">
			<option value="Publish">Publish</option>
			<option value="Draft">Draft</option>
		</select>
		<small class="text-secondary">Status publikasi</small>
	</div>
	<div class="col-md-2">
		<input type="text" name="icon" class="form-control" value="<?php echo set_value('icon') ?>">
		<small class="text-secondary">Icon <a href="https://fontawesome.com/icons" target="_blank">Fontawsome</a></small>
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2">Tanggal dan jam Publikasi</label>
	<div class="col-md-4">
		<input type="text" name="tanggal_publish" class="form-control tanggal" value="<?php if(isset($_POST['tanggal_publis'])) { echo set_value('tanggal_publish'); }else{ echo date('d-m-Y'); } ?>">
		<small class="text-secondary">Format <strong>dd-mm-yyyy</strong>. Misal: <?php echo date('d-m-Y') ?></small>
	</div>
	<div class="col-md-2">
		<input type="text" name="jam" class="form-control jam" value="<?php if(isset($_POST['jam'])) { echo set_value('jam'); }else{ echo date('H:i:s'); } ?>">
		<small class="text-secondary">Format <strong>HH:MM:SS</strong>. Misal: <?php echo date('H:i:s') ?></small>
	</div>
</div>

<div class="form-group row" id="link" style="display: none;">
	<label class="col-md-2">Link Website</label>
	<div class="col-md-10">
		<input type="text" name="url" class="form-control" value="<?php echo set_value('url') ?>">
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2">Ringkasan (ID)</label>
	<div class="col-md-10">
		<textarea name="ringkasan_id" class="form-control"><?php echo set_value('ringkasan_id') ?></textarea>
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2">Short Description (EN)</label>
	<div class="col-md-10">
		<textarea name="ringkasan" class="form-control"><?php echo set_value('ringkasan') ?></textarea>
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2">Isi Berita (ID)</label>
	<div class="col-md-10">
		<textarea name="isi_id" class="form-control konten"><?php echo set_value('isi_id') ?></textarea>
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2">News Content (EN)</label>
	<div class="col-md-10">
		<textarea name="isi" class="form-control konten"><?php echo set_value('isi') ?></textarea>
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2">Keyword Berita (untuk SEO Google)</label>
	<div class="col-md-10">
		<textarea name="keywords" class="form-control"><?php echo set_value('keywords') ?></textarea>
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2"></label>
	<div class="col-md-10">
		<button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan</button>
	</div>
</div>

<?php echo form_close(); ?>

<script>
	$(document).ready(function () {
		$('#jenis_berita').change(function (e) { 
			// e.preventDefault();
			if ($(this).val() == "Link") {
				$("#link").show();
			}else {
				$("#link").hide();
			}
		});
	});
</script>