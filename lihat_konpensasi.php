
<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Lembar Lihat Konpensasi</b>
    </div>

<?php

$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
$konek = mysqli_connect('localhost','root','','kopeg');
		mysql_select_db('kopeg');

$query = "SELECT tanggal_masalah,tanggal_konpensasi,keterangan from konpensasi";
$eksekusi = mysql_query($query,$koneksi);
echo "<form method=post action='?id=133'>";
echo "<table id='mytable'class='table table-bordered table-hover'><tr><th>Tanggal Masalah</th><th>Tanggal Konpensasi</th><th>Keterangan</th><th>Edit</th></tr>";
while ($row=mysql_fetch_array($eksekusi,MYSQL_ASSOC)) 
{
	echo "<tr>";
	echo "<td>{$row['tanggal_masalah']}</td>";
	echo "<td>{$row['tanggal_konpensasi']}</td>";
	echo "<td>{$row['keterangan']}</td>";
	echo "<td><input type=radio name=edit value={$row['tanggal_masalah']}></td>";
	echo "</tr>";
}
echo "<tr><td colspan=4><input type=submit value='PILIH' class='btn btn-primary'></td></tr>";
echo "</table></form>";
?>