<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Lembar Keuangan</b>
    </div>
    <div class="row">
        <div class="col-md-3 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h4>Rekap Pendapatan</h4>
                    <br>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalRekap">LIHAT</a>
                    <a href="#" class="btn btn-primary">PRINT</a>
                </div>
            </div>
        </div>
        <div class="col-md-3 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h4>Surat Transfer</h4>
                    <br>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalTransfer">PILIH TANGGAL</a>
                </div>
            </div>
        </div>
        <div class="col-md-3 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h4>Rincian Transfer</h3>
                    <br>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalRincianTransfer">PILIH TANGGAL</a>
                </div>
            </div>
        </div>
        <div class="col-md-3 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h4>Rincian SOPP</h4>
                    <br>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalRincianSOPP">LIHAT</a>
                    <a href="#" class="btn btn-primary">PRINT</a>
                </div>
            </div>
        </div>
</div>

<!-- MODAL UNTUK REKAP PENDAPTAN -->
<div class="modal fade" id="modalRekap" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Lihat Rekap Pendapatan</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="index.php?id=10" method="POST">
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

<!-- MODAL UNTUK SURAT TRANSFER -->
<div class="modal fade" id="modalTransfer" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Surat Transfer</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="proses_cetak_surat.php" method="POST">
            <table class="text-center">
                <tr>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker3" name="nilai" placeholder="Tanggal Awal"></td>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker4" name="nilai2" placeholder="Tanggal Akhir"></td>
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

<!-- MODAL UNTUK RINCIAN TRANSFER -->
<div class="modal fade" id="modalRincianTransfer" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Rincian Transfer</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="proses_cetak_surat2.php" method="POST">
            <table class="text-center">
                <tr>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker5" name="nilai" placeholder="Tanggal Awal"></td>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker6" name="nilai2" placeholder="Tanggal Akhir"></td>
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

<!-- MODAL UNTUK Rincian SOPP -->
<div class="modal fade" id="modalRincianSOPP" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Lihat Rincian SOPP</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="index.php?id=9" method="POST">
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