<?php include 'header.php' ?>

<body>

  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo text-center">
                <img src="assets/images/icon.jpg" alt="logo">
              </div>
              <h4 class="text-center">Selamat Datang</h4>
              <h6 class="font-weight-light text-center mb-3">Silakan Login untuk melanjutkan.</h6>
              <form method="POST" action="proseslogin.php">
                <div class="form-group">
                  <input name="username" type="text" class="form-control" placeholder="Username">
                </div>
                <div class="form-group">
                  <input name="password" type="password" class="form-control" placeholder="Password">
                </div>
                <div class="mt-3">
                  <button type="submit" name="login" class="btn btn-block btn-primary"><b>LOGIN</b></button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

<?php include 'footer.php' ?>
