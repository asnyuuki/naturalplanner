<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">
  <form method="post" action="<?= base_url('pengguna/update/' .  user()->id) ?>" enctype="multipart/form-data">
    <?= csrf_field(); ?>
    <input type="hidden" name="id" value="<?= user()->id; ?>" class="form-control" id="id" aria-describedby="emailHelp">

    <div class="mb-3">
      <label for="exampleInputPassword1" class="form-label">email</label>
      <input type="text" class="form-control" name="email" value="<?= user()->email; ?>" id="email">
    </div>
    <div class="mb-2">
      <label for="exampleInputEmail1" class="form-label">Nama </label>
      <input type="text" name="username" value="<?= user()->username; ?>" class="form-control" id="username" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
      <label for="exampleInputPassword1" class="form-label">fullname</label>
      <input type="text" class="form-control" name="fullname" value="<?= user()->fullname; ?>" id="fullname">
    </div>
    <div class="mb-3">
      <label for="exampleInputEmail1" class="form-label">Foto </label>
      <input type="file" name="user_image" class="form-control" id="user_image" aria-describedby="emailHelp">
    </div>

    <button type="submit" value="Update" class="btn btn-primary">Submit</button>
  </form>

</div>
<!-- /.container-fluid -->
<!-- End of Main Content -->

<!-- Footer -->
<?= $this->endSection(); ?>