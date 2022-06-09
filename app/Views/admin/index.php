<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>
<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">User List</h1>
    <div class="row">
        <div class="col-lg-8">
            <a href="/admin/create" class="btn btn-primary mb-3">
                <i class="fa-solid fa-user-plus"></i>
                user
            </a>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">No</th>
                        <th scope="col">Username</th>
                        <th scope="col">Email</th>
                        <th scope="col">Role</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($users as $users) : ?>
                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td><?= $users->username; ?></td>
                            <td><?= $users->email; ?></td>
                            <td><?= $users->name; ?></td>
                            </td>
                            <td>
                                <a href="<?= base_url('admin/' . $users->userid); ?>" class="btn
                                btn-info">detail</a>
                            </td>

                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>

</div>
<!-- End of Main Content -->

<!-- Footer -->
<?= $this->endSection(); ?>