<?php
	$tanggal1 = $_POST['nilai'];
	$tanggal2 = $_POST['nilai2'];
	$jumlah_desimal ="0";
	$pemisah_desimal =",";
	$pemisah_ribuan =".";
?>

<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Lembar Input Kinerja PerUSER
            <?php 
                if($tanggal1==$tanggal2) {
                    echo $tanggal1;
                } else {
                    echo "$tanggal1-$tanggal2";
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

    $query = "select tempat_pisah from lokasi";
    $execute = mysql_query($query,$koneksi);
    $no=1;
?>

<form method="POST" action="index.php?id=30">
<div class="row">
    <div class="col-md-6 offset-md-3">
        <table id="mytable" class="table-bordered table-hover table mb-3">
            <thead>
                <tr>
                    <td class="tx">Tanggal</td><td><input class="form-control" autocomplete="off" type="text" id="datepicker" name="nilai" placeholder="Tanggal">
                    </td></tr>
                <tr>
                <th class="text-center">LOKET</th>
                <th class="text-center">USER</th>
                </tr>
            </thead>
            <?php
                while ($row=mysql_fetch_array($execute, MYSQL_ASSOC)) {
                    echo 	"<tr><th class='tx'>{$row['tempat_pisah']}</th><td><input type=text class='form-control' name='user[]'>
                            <input type=hidden name='loket[]' value={$row['loket']}>
                            </td></tr>"; 
                }
            ?>
    </div>
</div>
            <tr>
                <td colspan="2" align="center"><button type="submit" class="btn btn-primary" name="filter" >SIMPAN DATA</button>
                </td>
            </tr>
        </table>
</form>
</div>