<?php
    $dbhost = 'localhost';
    $dbuser = 'root';
    $dbpass = '';
    $koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
    $konek = mysqli_connect('localhost','root','','kopeg');
            mysql_select_db('kopeg');
    $edit = $_POST['edit'];
    $query = "SELECT * from fee_pdam where pdam='$edit'";
    $eksekusi = mysql_query($query,$koneksi);
    $row=mysql_fetch_array($eksekusi,MYSQL_ASSOC);

    if(isset($_POST['submit'])) {

    } else {
?>

<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>EDIT FEE PDAM
            <?php 
                if($tanggal1==$tanggal2) {
                    echo $tanggal1;
                } else {
                    echo "$tanggal1-$tanggal2";
                }
            ?>
        </b>
    </div>
    <form method="POST">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <table class="table-hover table-bordered table">
                <tr>
                    <td><b>PDAM</b></td>
                    <td><input class="form-control" type="text" name="pdam" value="<?=$row['pdam'] ?>"></td>
                </tr>
                <tr>
                    <td><b>Regional</b></td>
                    <td><input class="form-control" type="text" name="regional" value="<?=$row['regional'] ?>"></td>
                </tr>
                <tr>
                    <td><b>Biaya Admin</b></td>
                    <td><input class="form-control" type="text" name="biaya_admin" value="<?=$row['biaya_admin'] ?>"></td>
                </tr>
                <tr>
                    <td><b>Fee Mitra</b></td>
                    <td><input class="form-control" type="text" name="fee_mitra" value="<?=$row['fee_mitra'] ?>"></td>
                </tr>
                <tr><td colspan="2" style="text-align:center;"><input class="btn btn-sm btn-primary" type="submit" name="submit"></td></tr>
            </table>
        </div>
    </div>
</form>
</div>

<?php 
    }

if (isset($_POST['submit'])) {

    $pdam = $_POST['pdam'];
    $regional = $_POST['regional'];
    $biaya_admin = $_POST['biaya_admin'];
    $fee_mitra = $_POST['fee_mitra'];

    $dbhost = 'localhost';
    $dbuser = 'root';
    $dbpass = '';
    $koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
    $konek = mysqli_connect('localhost','root','','kopeg');
    mysql_select_db('kopeg');
    $hapus = "DELETE from fee_pdam where pdam='$pdam'";
    
    $eksekusihapus = mysqli_query($konek,$hapus);
    $insert = "INSERT INTO `kopeg`.`fee_pdam` VALUES ('$pdam','$regional',$biaya_admin,$fee_mitra)";
    $sql=mysqli_query($konek,$insert);
    if ($sql) {
        echo "<script language='JavaScript'>
            window.alert ('Data berhasil diubah');
            window.location.href='index.php?id=20';
        </script>";
    }else{
        echo "Data Gagal Disimpan.";
    }	
}
?>