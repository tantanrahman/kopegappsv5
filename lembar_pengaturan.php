<?php

    $server = "localhost";
    $user = "root";
    $password = "";
    $database = "kopeg";
    $konek = mysql_connect($server,$user,$password) or die("Koneksi gagal");

    mysql_select_db($database, $konek) or die("Database tidak bisa dibuka");

    $tanggal = $_POST['nilai'];
    $saldo = $_POST['saldo'];
    $date = explode("-", $tanggal);
    $arr = array("$date[2]","$date[1]","$date[0]");
    $tampil_date = implode("-", $arr);

    $query = "INSERT INTO saldo VALUES ('$tampil_date',$saldo)";
    $eksekusi = mysql_query($query,$konek);

?>
<?php 
    if (isset($_POST['hapus_saldo']))
    {
    
        $querysaldo = mysql_query("TRUNCATE TABLE saldo");
        $eksekusisaldo = mysql_query($querysaldo,$konek);
        
    }
?>
<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Lembar Pengaturan</b>
    </div>
    <div class="row">
        <div class="col-md-3 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h4>SALDO AKHIR</h4>
                    <br>
                    <form method="POST">
                        <table class="text-center">
                            <tr>
                                <td><a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalSaldo">INPUT</a></td>
                                <td><button type="submit" class="btn btn-danger" name="hapus_saldo" onclick="return confirm('Kosongkan Saldo?');">HAPUS</button></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-3 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h4>INPUT REKENING KORAN</h4>
                    <br>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modalTransfer">PILIH TANGGAL</a>
                </div>
            </div>
        </div>
        <div class="col-md-3 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h4>INPUT TITIPAN / TALANGAN</h3>
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
</div>


<!-- MODAL UNTUK SALDO -->
<div class="modal fade" id="modalSaldo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Silakan Input Saldo Akhir</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
        <form method="POST">
            <table class="text-center">
                <tr>
                    <td><input class="form-control" autocomplete="off" type="text" id="datepicker" name="nilai" placeholder="Tanggal"></td>
                    <td><input class="form-control" type="text" name="saldo" placeholder="Saldo" autocomplete="off"></td>
                </tr>
            </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" name="filter"><i class="fa fa-search fa-fw"></i> SIMPAN</button>
      </div>
      </form>
    </div>
  </div>
</div>