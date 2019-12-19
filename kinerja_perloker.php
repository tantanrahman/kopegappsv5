<?php
    $tanggal1 = $_POST['nilai'];
    $tanggal2 = $_POST['nilai2'];
    $jumlah_desimal ="0";
    $pemisah_desimal =",";
    $pemisah_ribuan =".";
?>

<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Lembar Kinerja Perloket
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

$sql ="SELECT A.tempat_pisah, A.lokasi,A.jum_sopp,B.jum_pln,C.jum_pdam,D.jum_arindo,E.jum_voucher from
(select lokasi.tempat_pisah,lokasi.lokasi,sum(sopp.trx) as jum_sopp from lokasi left join sopp on lokasi.loket=sopp.user AND  (tanggal between '$tampil_date' AND '$tampil_date2') group by lokasi.tempat_pisah) as A
left join
(select lokasi.tempat_pisah,lokasi.lokasi,sum(pln.trx) as jum_pln from lokasi left join pln on lokasi.loket=pln.loket AND  (tanggal between '$tampil_date' AND '$tampil_date2')  group by lokasi.tempat_pisah) as B on (A.lokasi=B.lokasi)
left join
(select lokasi.tempat_pisah,lokasi.lokasi,sum(pdam.trx) as jum_pdam from lokasi left join pdam on lokasi.loket = pdam.loket and (tanggal between '$tampil_date' AND '$tampil_date2')  group by lokasi.tempat_pisah) as C on (B.lokasi=C.lokasi)
left join
(select lokasi.tempat_pisah,lokasi.lokasi,sum(arindo_trx.total_lembar) as jum_arindo from lokasi left join arindo_trx on lokasi.user = arindo_trx.kode_user and (tanggal between '$tampil_date' AND '$tampil_date2')  group by lokasi.tempat_pisah) as D on (C.lokasi=D.lokasi)
left join
(select lokasi.tempat_pisah,lokasi.lokasi,count(voucher.total_kopeg) as jum_voucher from lokasi left join voucher on lokasi.loket=voucher.user AND (tanggal between '$tampil_date' AND '$tampil_date2')  group by lokasi.tempat_pisah) as E on (D.lokasi=E.lokasi)";

?>
<table id="mytable" class="table table-bordered table-hover mb-3">
<thead class="header">

	<tr>
		<th>No</th>
		<th>Usser</th>
		<th>SOPP</th>
		<th>PLN</th>
		<th>PDAM</th>
		<th>ARINDO</th>
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
$jumlah=$jumlah1=$jumlah2=$jumlah3=$jumlah4=$jumlah5=$jumlah6=0;
$i=1;
while($row = mysql_fetch_array($ambildata, MYSQL_ASSOC))
{


	echo "<tr>";
	echo "<td  align='center'>$i</td>";
	echo "<td>{$row['tempat_pisah']}</td>";
	echo "<td align='right'>".number_format($row['jum_sopp'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>";
	echo "<td align='right'>".number_format($row['jum_pln'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>";
	echo "<td align='right'>".number_format($row['jum_pdam'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>";
	echo "<td align='right'>".number_format($row['jum_arindo'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>";
	echo "<td align='right'>".number_format($row['jum_voucher'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>";
	$jumlah = $row['jum_sopp']+$row['jum_pln']+$row['jum_pdam']+$row['jum_arindo']+$row['jum_voucher'];
	echo "<td align='right'>".number_format($jumlah, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>";
	echo "</tr>";
	$jumlah1= $jumlah1 + $row['jum_sopp'];
	$jumlah2= $jumlah2 + $row['jum_pln'];
	$jumlah3= $jumlah3 + $row['jum_pdam'];
	$jumlah4= $jumlah4 + $row['jum_arindo'];
	$jumlah5= $jumlah5 + $row['jum_voucher'];
	$jumlah6= $jumlah6 + $jumlah;
	$i++;
}
echo "<tr>
	<td colspan=2 align='center' class='tx'>Total</td>
	<td class='tx' align='right'>".number_format($jumlah1, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>
	<td class='tx' align='right'>".number_format($jumlah2, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>
	<td class='tx' align='right'>".number_format($jumlah3, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>
	<td class='tx' align='right'>".number_format($jumlah4, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>
	<td class='tx' align='right'>".number_format($jumlah5, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>
	<td class='tx' align='right'>".number_format($jumlah6, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan)."</td>
</tr>";
?>

</div>

