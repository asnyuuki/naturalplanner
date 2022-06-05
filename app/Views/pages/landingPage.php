<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<section class="header text-start">
    <div class="d-flex justify-content-between">
        <img src="/img/background/flower.svg" width="280" style="margin-left: -50px; margin-top: 20px; opacity: .4;">
        <div class="deskripsi">
            <h1>Natural Planner</h1>
            <p>Is most highly regarded as Bogor’s premiere wedding and event planning firm. <br>
                Natural Planner services clients worldwide as well as for our locals right here in the islands.</p>
        </div>
        <div class="d-block col-4" style="background-image: url('/img/background/ring.svg'); background-repeat: no-repeat; background-size: cover">
            <div class="card bg-transparent border-0" style="width: 95%; transform: rotate(-6deg) translateX(-10px)">
                <img src="/img/foto/polaroid.png">
            </div>
        </div>
    </div>
</section>
<?= $this->endSection(); ?>