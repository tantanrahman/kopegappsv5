<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Lembar Kinerja</b>
    </div>
    <div class="row">
        <div class="col-md-4 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h4>Per Loket</h4>
                    <hr>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalLoket">LIHAT</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h4>Per User</h4>
                    <hr>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalUser">LIHAT</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h4>Input User/Loket</h4>
                    <hr>
                    <a href="index.php?id=29" class="btn btn-primary">PILIH</a>
                </div>
            </div>
        </div>
</div>

<!-- MODAL UNTUK PERLOKET -->
<div class="modal fade" id="modalLoket" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Lihat Per LOKET</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="index.php?id=27" method="POST">
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

<!-- MODAL UNTUK PERUSER -->
<div class="modal fade" id="modalUser" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Pilih Tanggal Lihat Per USER</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form action="index.php?id=28" method="POST">
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