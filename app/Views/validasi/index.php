<?= $this->extend('templates/index'); ?>
<?= $this->section('page-content'); ?>
<!-- Main Content -->
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>Hasil Validasi</h1>
        </div>
        <div class="section-body">
            <div class="container">
                <div class="row mb-3">
                    <div class="col">
                        <a href="/validasi/export" class="btn btn-light shadow float-left">Export <i class="bi bi-file-earmark-text-fill"></i></a>
                    </div>
                    <div class="col">
                        <div class="d-flex flex-row-reverse bd-highlight">
                            <form action="" method="post">
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2" name="keyword">
                                    <button class="btn btn-light" type="submit" id="button-addon2" name="submit"><i class="bi bi-search"></i>Search</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-12">
                        <table class="table table-striped" style="width:180px; table-layout:auto">
                            <thead class="bg-light">
                                <tr>
                                    <th scope="col">No</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">Nim</th>
                                    <th scope="col">created</th>
                                    <!-- <th scope="col">updated</th> -->
                                    <th scope="col">Prodi</th>
                                    <th scope="col">Status</th>
                                    <th scope="col" colspan="2" style="text-align:center ;">Action</th>
                                    <!-- <th scope="col">Action</th> -->
                                </tr>
                            </thead>
                            <tbody>
                                <?php $k = 1 + (4 * ($currentPage - 1)); ?>
                                <?php foreach ($viewvalidasi as $vv) : ?>
                                    <tr>
                                        <td><?= $k++; ?></td>
                                        <td><?= $vv['nama_mahasiswa']; ?></td>
                                        <td><?= $vv['nim_mahasiswa']; ?></td>
                                        <td><?= $vv['created_at']; ?></td>
                                        <!-- <td><?= $vv['updated_at']; ?></td> -->
                                        <td><?= $vv['prodi']; ?></td>
                                        <td><?= $vv['hasil_validasi']; ?></td>
                                        <td><a class="btn btn-warning" href="/validasi/edit/ <?= $vv['id']; ?>"><i class="bi bi-pencil-fill"></i></a></td>
                                        <!-- <td><a class="btn btn-danger" href="/validasi/delete/<?= $vv['id'] ?>"><i class="bi bi-trash3-fill"></i></a></td> -->
                                        <td>
                                            <form action="/validasi/<?= $vv['id']; ?>" method="post">
                                                <?= csrf_field(); ?>
                                                <input type="hidden" name="_method" value="DELETE">
                                                <button type="submit" class="btn btn-danger" onclick="return confirm('are you sure ?');"><i class="bi bi-trash3-fill"></i></button>
                                            </form>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                        <?= $pager->links('viewvalidasi', 'validasi_pagination'); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<?= $this->endSection(); ?>