<form action="<?php echo base_url('admin/organisasi/index') ?>" method="post" accept-charset="utf-8" enctype="multipart/form-data">
<?php 
echo csrf_field(); 
?>

<input type="hidden" name="id" value="<?php echo $organisasi['id'] ?>">
<div class="form-group row">
	<label class="col-3">Upload Struktur Organisasi Baru</label>
	<div class="col-9">
		<input type="file" name="gambar" value="<?php echo $organisasi['gambar'] ?>" class="form-control" accept=".jpg, .png, .jpeg, .gif, .bmp, .tif, .tiff|image/*">
		<small class="text-secondary">Format: JPG, PNG, GIF</small>
	</div>
	<div class="col-6">
		<img src="<?php echo organization() ?>" class="img img-thumbnail">
	</div>
	<div class="col-6">
		<button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan</button>
	</div>
</div>

<?php echo form_close(); ?>