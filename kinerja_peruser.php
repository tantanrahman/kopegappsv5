<?php
	$tanggal1 = $_POST['nilai'];
	$tanggal2 = $_POST['nilai2'];
	$jumlah_desimal ="0";
	$pemisah_desimal =",";
	$pemisah_ribuan =".";
?>
<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Lembar Kinerja PerUSER
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
if(! $koneksi )
{
  die('Gagal Koneksi: ' . mysql_error());
}
$tanggal1 = $_POST['nilai'];
$tanggal2 = $_POST['nilai2'];
$date = explode("-", $tanggal1);
                    $date2 = explode("-", $tanggal2);
                    $arr = array("$date[2]","$date[1]","$date[0]");
                    $arr2 = array("$date2[2]","$date2[1]","$date2[0]");
                    $tampil_date = implode("-", $arr);
                    $tampil_date2 = implode("-", $arr2);

$sql ="select A.tempat, A.lokasi,A.jum_sopp,B.jum_pln,C.jum_pdam,D.jum_voucher,E.nama_user from
(Select nama_user,loket from loket where loket.tanggal between '$tampil_date' AND '$tampil_date2') as E
left join
(select lokasi.tempat,lokasi.loket,loket.nama_user,lokasi.lokasi,sum(sopp.trx) as jum_sopp from lokasi left join loket on lokasi.loket=loket.loket left join sopp on lokasi.loket=sopp.user AND  (sopp.tanggal between '$tampil_date' AND '$tampil_date2') group by lokasi.lokasi) as A on (E.loket=A.loket)
left join
(select lokasi.tempat,loket.nama_user,lokasi.lokasi,sum(pln.trx) as jum_pln from lokasi left join loket on lokasi.loket=loket.loket left join pln on lokasi.loket=pln.loket AND  (pln.tanggal between '$tampil_date' AND '$tampil_date2')  group by lokasi.lokasi ) as B on (A.lokasi=B.lokasi)
left join
(select lokasi.tempat,loket.nama_user,lokasi.lokasi,sum(pdam.trx) as jum_pdam from lokasi left join loket on lokasi.loket=loket.loket left join pdam on lokasi.loket = pdam.loket and (pdam.tanggal between '$tampil_date' AND '$tampil_date2')  group by lokasi.lokasi) as C on (B.lokasi=C.lokasi)
left join
(select lokasi.tempat,loket.nama_user,lokasi.lokasi,count(voucher.total_kopeg) as jum_voucher from lokasi left join loket on lokasi.loket=loket.loket left join voucher on lokasi.loket=voucher.user AND (voucher.tanggal between '$tampil_date' AND '$tampil_date2')  group by lokasi.lokasi) as D on (C.lokasi=D.lokasi)";

?>
<table id="mytable" class="table table-bordered table-hover">
<thead class="header">

	<tr>
		<th>No</th>
		<th>Usser</th>
		<th>Nama User</th>
		<th>SOPP</th>
		<th>PLN</th>
		<th>PDAM</th>
		<th>Voucher</th>
		<th>Jumlah</th>
	</tr>
	</thead>
<?php
	mysql_select_db('kopeg');
$ambildata = mysql_query( $sql, $koneksi);
if(! $ambildata )
{
  die('Gagal ambil data: ' . mysql_error());
}
$jumlah=$jumlah1=$jumlah2=$jumlah3=$jumlah4=$jumlah5=0;
$i=1;
while($row = mysql_fetch_array($ambildata, MYSQL_ASSOC))
{



echo "<tr>";
	echo "<td align='center'>$i</td>";
	echo "<td>{$row['lokasi']}</td>";
	echo "<td>{$row['nama_user']}</td>";
	echo "<td align='right'>".number_format($row['jum_sopp'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>";
	echo "<td align='right'>".number_format($row['jum_pln'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>";
	echo "<td align='right'>".number_format($row['jum_pdam'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>";
	echo "<td align='right'>".number_format($row['jum_voucher'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>";
	$jumlah = $row['jum_sopp']+$row['jum_pln']+$row['jum_pdam']+$row['jum_voucher'];
	echo "<td align='right'>".number_format($jumlah, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>";
	echo "</tr>";
	$jumlah1= $jumlah1 + $row['jum_sopp'];
	$jumlah2= $jumlah2 + $row['jum_pln'];
	$jumlah3= $jumlah3 + $row['jum_pdam'];
	$jumlah4= $jumlah4 + $row['jum_voucher'];
	$jumlah5= $jumlah5 + $jumlah;
	$i++;
}
echo "<tr>
	<td colspan=3 align='center' class='tx'>Total</td>
	<td class='tx' align='right'>".number_format($jumlah1, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>
	<td class='tx' align='right'>".number_format($jumlah2, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>
	<td class='tx' align='right'>".number_format($jumlah3, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>
	<td class='tx' align='right'>".number_format($jumlah4, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>
	<td class='tx' align='right'>".number_format($jumlah5, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>
</tr>";
?>

</div>