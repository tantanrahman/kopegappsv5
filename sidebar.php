<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <b><a class="nav-link" href="index.php">Kopeg Apps v5.6</a></b>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="ti-view-list"></span>
        </button>
        
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
              Login Sebagai, <b><?php echo $_SESSION['nama' ] ; ?></b> <i class="ti-settings"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item" href="index.php?id=20">
                <i class="ti-arrow-circle-right"></i>
                Fee PDAM
              </a>
              <a class="dropdown-item" href="index.php?id=12">
                <i class="ti-quote-right"></i>
                Kode Awal
              </a>
              <a class="dropdown-item" href="index.php?id=12">
                <i class="ti-mobile"></i>
                Harga Pulsa
              </a>
              <a class="dropdown-item" href="index.php?id=12">
                <i class="ti-trash"></i>
                Hapus Pendapatan
              </a>
              <a class="dropdown-item" href="logout.php">
                <i class="ti-power-off"></i>
                Logout
              </a>
            </div>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="ti-view-list"></span>
        </button>
      </div>
    </nav>

    <div class="container-fluid page-body-wrapper">
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="index.php"  >
              <i class="ti-shield menu-icon"></i>
              <span class="menu-title"><b>Dashboard</b></span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.php?id=2">
              <i class="ti-files menu-icon"></i>
              <span class="menu-title"><b>Lembar Pendapatan</b></span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <i class="ti-upload menu-icon"></i>
              <span class="menu-title"><b>Upload</b></span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="index.php?id=5">Upload Data</a></li>
                <li class="nav-item"> <a class="nav-link" href="index.php?id=24">Upload Fee Arindo</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.php?id=8">
              <i class="ti-files menu-icon"></i>
              <span class="menu-title"><b>Keuangan</b></span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.php?id=25">
              <i class="ti-files menu-icon"></i>
              <span class="menu-title"><b>Colfee</b></span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.php?id=26">
              <i class="ti-files menu-icon"></i>
              <span class="menu-title"><b>Kinerja</b></span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.php?id=31">
              <i class="ti-files menu-icon"></i>
              <span class="menu-title"><b>Konpensasi</b></span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.php?id=14">
              <i class="ti-settings menu-icon"></i>
              <span class="menu-title"><b>Pengaturan</b></span>
            </a>
          </li>
        </ul>
      </nav>