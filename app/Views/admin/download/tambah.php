<form action="<?php echo base_url('admin/download/tambah') ?>" method="post" accept-charset="utf-8" enctype="multipart/form-data">
<?php 
echo csrf_field(); 
?>

<div class="form-group row">
	<label class="col-md-2">Judul Download (ID)</label>
	<div class="col-md-10">
		<input type="text" name="judul_download_id" class="form-control" value="<?php echo set_value('judul_download_id') ?>" required>
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2">Judul Download (EN)</label>
	<div class="col-md-10">
		<input type="text" name="judul_download" class="form-control" value="<?php echo set_value('judul_download') ?>" required>
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2">Upload File</label>
	<div class="col-md-10">
		<input type="file" name="gambar" class="form-control" value="<?php echo set_value('gambar') ?>">
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2">Kategori, Jenis &amp; Status</label>
	<div class="col-md-3">
		<select name="id_kategori_download" class="form-control">
			<?php foreach($kategori_download as $kategori_download) { ?>
			<option value="<?php echo $kategori_download['id_kategori_download'] ?>">
				<?php echo $kategori_download['nama_kategori_download'] ?>
			</option>
			<?php } ?>
		</select>
		<small class="text-secondary">Kategori</small>
	</div>
	<div class="col-md-3">
		<select name="jenis_download" class="form-control">
			<option value="Download">Download</option>
			<option value="Panduan">Panduan</option>
		</select>
		<small class="text-secondary">Jenis konten</small>
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2">Isi Download (ID)</label>
	<div class="col-md-10">
		<textarea name="isi_id" class="form-control konten"><?php echo set_value('isi_id') ?></textarea>
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2">Isi Download (EN)</label>
	<div class="col-md-10">
		<textarea name="isi" class="form-control konten"><?php echo set_value('isi') ?></textarea>
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2">Link/URL</label>
	<div class="col-md-10">
		<input type="text" name="website" class="form-control" value="<?php echo set_value('website') ?>">
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2"></label>
	<div class="col-md-10">
		<button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan</button>
	</div>
</div>

<?php echo form_close(); ?>