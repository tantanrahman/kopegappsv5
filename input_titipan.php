<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
	    <b>
            Input Titipan dan Talangan
              <?php 
                $tanggal1 = $_POST['nilai'];
                $date = explode("-", $tanggal1);
                $arr = array("$date[2]","$date[1]","$date[0]");
                $tampil_date = implode("-", $arr);
                
                if ($tanggal1==$tanggal2) {
                    echo "$tanggal1";
                } else {
                    echo "$tanggal1";
                }
              ?>
        </b>
        </div>

<?php
    $dbhost = 'localhost';
    $dbuser = 'root';
    $dbpass = '';
    $koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
    $konek = mysqli_connect('localhost','root','','kopeg');
    mysql_select_db('kopeg');

    $tanggal1 = $_POST['nilai'];
    $date = explode("-", $tanggal1);
    $arr = array("$date[2]","$date[1]","$date[0]");
    $tampil_date = implode("-", $arr);

    $cari = "SELECT lokasi.tempat,titipan.titipan, titipan.tanggal,titipan.talangan from lokasi left join titipan on lokasi.tempat=titipan.tempat and tanggal='$tampil_date' group by tempat";
    $eksekusi = mysql_query($cari);
?>

<form method="POST" action="index.php?id=19">
<table class="table table-bordered table-hover">
<tr><th>Tempat</th><th>Titipan</th><th>Talangan</th></tr>
<?php
while ($data = mysql_fetch_array($eksekusi,MYSQL_ASSOC))
{
	echo "<tr>";
	echo "<td  class='tx'>{$data[tempat]}</td>";
	echo "<td><div class='col-lg-6'><input type=text class='form-control' value='{$data[titipan]}' name='titipan[]'> </td></div>";
	echo "<td><div class='col-lg-6'><input type=text class='form-control' value='{$data[talangan]}' name='talangan[]'> <input type=hidden name='tanggal[]' value='$tampil_date.{$data['tempat']}'></div>";
	echo "</tr>";
}
?>

</table>
<br>
<div class="text-center">
	<input type="submit" name="" value="SIMPAN" class="btn btn-primary mb-4">
</div>
</form>