<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Lembar Pendapatan</b>
    </div>
    <div class="row">
        <div class="col-md-3 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h3>PLN</h3>
                    <p class="card-text">Lembar Pendapatan</p>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalPLN">LIHAT</a>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalCetakPLN">CETAK</a>
                </div>
            </div>
        </div>
        <div class="col-md-3 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h3>PDAM</h3>
                    <p class="card-text">Lembar Pendapatan</p>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalPDAM">LIHAT</a>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalCetakPDAM">CETAK</a>
                </div>
            </div>
        </div>
        <div class="col-md-3 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h3>SOPP</h3>
                    <p class="card-text">Lembar Pendapatan</p>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalSOPP">LIHAT</a>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalCetakSOPP">CETAK</a>
                </div>
            </div>
        </div>
        <div class="col-md-3 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h3>VOUCHER</h3>
                    <p class="card-text">Lembar Pendapatan</p>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalVoucher">LIHAT</a>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalCetakVoucher">CETAK</a>
                </div>
            </div>
        </div>
    </div>
    <hr>
    <div class="row">
      <div class="col-md-3 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h3>ARINDO</h3>
                    <p class="card-text">Lembar Pendapatan</p>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalArindo">LIHAT</a>
                    <!-- <a href="#" class="btn btn-primary">CETAK</a> -->
                </div>
            </div>
      </div>
      <div class="col-md-3 grid-margin stretch-card">
          <div class="card text-center">
              <div class="card-body">
                  <h3>INDOVISION</h3>
                  <p class="card-text">Lembar Pendapatan</p>
                  <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalIndovision">LIHAT</a>
                  <!-- <a href="#" class="btn btn-primary">CETAK</a> -->
              </div>
          </div>
      </div>
      <div class="col-md-3 grid-margin stretch-card">
          <div class="card text-center">
              <div class="card-body">
                  <h3>TRANSVISION</h3>
                  <p class="card-text">Lembar Pendapatan</p>
                  <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalTransvision">LIHAT</a>
                  <!-- <a href="#" class="btn btn-primary">CETAK</a> -->
              </div>
          </div>
      </div>
      <div class="col-md-3 grid-margin stretch-card">
          <div class="card text-center">
              <div class="card-body">
                  <h3>AORA TV</h3>
                  <p class="card-text">Lembar Pendapatan</p>
                  <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalAoraTv">LIHAT</a>
                  <!-- <a href="#" class="btn btn-primary">CETAK</a> -->
              </div>
          </div>
      </div>
    </div>
</div>


<!-- MODAL UNTUK PLN -->
<div class="modal fade" id="modalPLN" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Lihat Lembar PLN</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="index.php?id=3" method="POST">
            <table class="text-center">
                <tr>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker" name="nilai" placeholder="Tanggal Awal"></td>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker2" name="nilai2" placeholder="Tanggal Akhir"></td>
                </tr>
            </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" name="filter"><i class="fa fa-search fa-fw"></i> LIHAT</button>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- MODAL UNTUK PDAM -->
<div class="modal fade" id="modalPDAM" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Lihat Lembar PDAM</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="index.php?id=4" method="POST">
            <table class="text-center">
                <tr>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker3" name="nilai" placeholder="Tanggal Awal"></td>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker4" name="nilai2" placeholder="Tanggal Akhir"></td>
                </tr>
            </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" name="filter"><i class="fa fa-search fa-fw"></i> LIHAT</button>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- MODAL UNTUK SOPP -->
<div class="modal fade" id="modalSOPP" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Lihat Lembar SOPP</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="index.php?id=6" method="POST">
            <table class="text-center">
                <tr>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker5" name="nilai" placeholder="Tanggal Awal"></td>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker6" name="nilai2" placeholder="Tanggal Akhir"></td>
                </tr>
            </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" name="filter"><i class="fa fa-search fa-fw"></i> LIHAT</button>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- MODAL UNTUK VOUCHER -->
<div class="modal fade" id="modalVoucher" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Lihat Lembar Voucher</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="index.php?id=7" method="POST">
            <table class="text-center">
                <tr>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker7" name="nilai" placeholder="Tanggal Awal"></td>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker8" name="nilai2" placeholder="Tanggal Akhir"></td>
                </tr>
            </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" name="filter"><i class="fa fa-search fa-fw"></i> LIHAT</button>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- MODAL UNTUK ARINDO -->
<div class="modal fade" id="modalArindo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Lihat Lembar Arindo</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="index.php?id=11" method="POST">
            <table class="text-center">
                <tr>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker9" name="nilai" placeholder="Tanggal Awal"></td>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker10" name="nilai2" placeholder="Tanggal Akhir"></td>
                </tr>
            </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" name="filter"><i class="fa fa-search fa-fw"></i> LIHAT</button>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- MODAL UNTUK INDOVISION -->
<div class="modal fade" id="modalIndovision" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Lihat Lembar Indovision</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="index.php?id=11" method="POST">
            <table class="text-center">
                <tr>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker13" name="nilai" placeholder="Tanggal Awal"></td>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker14" name="nilai2" placeholder="Tanggal Akhir"></td>
                </tr>
            </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" name="filter"><i class="fa fa-search fa-fw"></i> LIHAT</button>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- MODAL UNTUK TRANSVISION -->
<div class="modal fade" id="modalTransvision" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Lihat Lembar Transvision</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="index.php?id=11" method="POST">
            <table class="text-center">
                <tr>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker15" name="nilai" placeholder="Tanggal Awal"></td>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker16" name="nilai2" placeholder="Tanggal Akhir"></td>
                </tr>
            </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" name="filter"><i class="fa fa-search fa-fw"></i> LIHAT</button>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- MODAL UNTUK AORA TV -->
<div class="modal fade" id="modalAoraTv" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Lihat Lembar Aora TV</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="index.php?id=11" method="POST">
            <table class="text-center">
                <tr>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker17" name="nilai" placeholder="Tanggal Awal"></td>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker18" name="nilai2" placeholder="Tanggal Akhir"></td>
                </tr>
            </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" name="filter"><i class="fa fa-search fa-fw"></i> LIHAT</button>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- MODAL UNTUK CETAK PLN -->
<div class="modal fade" id="modalCetakPLN" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Cetak Lembar PLN</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="cetak_pen_pln.php" method="POST">
            <table class="text-center">
                <tr>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker11" name="nilai" placeholder="Tanggal Awal"></td>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker12" name="nilai2" placeholder="Tanggal Akhir"></td>
                </tr>
            </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" name="filter"><i class="fa fa-search fa-fw"></i> CETAK</button>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- MODAL UNTUK CETAK PDAM -->
<div class="modal fade" id="modalCetakPDAM" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Cetak Lembar PDAM</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="cetak_pen_pdam.php" method="POST">
            <table class="text-center">
                <tr>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker19" name="nilai" placeholder="Tanggal Awal"></td>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker20" name="nilai2" placeholder="Tanggal Akhir"></td>
                </tr>
            </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" name="filter"><i class="fa fa-search fa-fw"></i> CETAK</button>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- MODAL UNTUK CETAK SOPP -->
<div class="modal fade" id="modalCetakSOPP" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Cetak Lembar SOPP</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="cetak_pen_sopp.php" method="POST">
            <table class="text-center">
                <tr>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker21" name="nilai" placeholder="Tanggal Awal"></td>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker22" name="nilai2" placeholder="Tanggal Akhir"></td>
                </tr>
            </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" name="filter"><i class="fa fa-search fa-fw"></i> CETAK</button>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- MODAL UNTUK CETAK VOUCHER -->
<div class="modal fade" id="modalCetakVoucher" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Cetak Voucher</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="cetak_pen_voucher.php" method="POST">
            <table class="text-center">
                <tr>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker23" name="nilai" placeholder="Tanggal Awal"></td>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker24" name="nilai2" placeholder="Tanggal Akhir"></td>
                </tr>
            </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" name="filter"><i class="fa fa-search fa-fw"></i> CETAK</button>
      </div>
      </form>
    </div>
  </div>
</div>