<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Cetak Konpensasi</b>
    </div>
    <div class="row">
        <div class="col-md-6 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h4>Surat Permohonans</h4>
                    <p class="card-text">Lembar Konpensasi</p>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalSurat">CETAK</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h4>Rincian Surat Permohonan</h4>
                    <p class="card-text">Lembar Konpensasi</p>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalRincian">CETAK</a>
                </div>
            </div>
        </div>
    </div>

</div>

<!-- MODAL UNTUK CETAK SURAT -->
<div class="modal fade" id="modalSurat" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Cetak Surat Permohonan</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="proses_cetak_surat_konpensasi.php" method="POST">
            <table class="text-center">
                <tr>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker" name="nilai" placeholder="Tanggal Awal"></td>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker2" name="nilai2" placeholder="Tanggal Akhir"></td>
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

<!-- MODAL UNTUK CETAK RINCIAN -->
<div class="modal fade" id="modalRincian" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Cetak Rincian Surat Permohonan</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="proses_cetak_surat_rincian.php" method="POST">
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