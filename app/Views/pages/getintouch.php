<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<section class="main">
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="col-md-8 align-self-center mt-3">
                <h1>
                    Contact Us
                </h1>
                <p>Please get in touch and our expert support team will answer all your questions</p>
                <b>How can i help you?</b>
                <div class="mb-3 mt-3">
                    <form class="form-floating">
                        <input type="text" class="form-control" id="floatingInputValue1" placeholder="Your Name">
                        <label for="floatingInputValue1" class="form-label" style="font-family: Kalam;">Name</label>
                    </form>
                </div>
                <div class="mb-3">
                    <form class="form-floating">
                        <input type="email" class="form-control" id="floatingInputValue" placeholder="name@weddorg.com">
                        <label for="floatingInputValue" class="form-label" style="font-family: Kalam;">Email
                            address</label>
                    </form>
                </div>
                <div class="mb-3">
                    <form class="form-floating">
                        <textarea class="form-control" id="FormControlTextarea1" rows="3" placeholder="your message" style="height:10em"></textarea>
                        <label for="FormControlTextarea1" class="form-label" style="font-family: Kalam;">Message</label>
                    </form>
                </div>
                <div class="mb-3">
                    <div class="row">
                        <p class="text-start">Are you an existing customer?</p>
                        <div class="col d-flex">
                            <div class="form-check me-3">
                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                <label class="form-check-label" for="flexRadioDefault1">
                                    Yes
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                                <label class="form-check-label" for="flexRadioDefault2">
                                    No
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row d-flex justify-content-end">
            <div class="col-md-3 me-4">
                <button class="btn btn-primary rounded-pill mt-2 mb-5" style="font-weight: 600;" value="submit">SUBMIT</button>
            </div>
        </div>
    </div>
</section>
<?= $this->endSection(); ?>