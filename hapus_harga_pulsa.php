<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Hapus Harga Pulsa</b>
    </div>

<form method="POST">
<table class="table-hover table-bordered table mb-4">
<tr>
	<th>Kode Pulsa</th>
	<th>Produk</th>
	<th>Harga Arindo</th>
	<th>Harga Jual</th>
	<th>Fee Kopeg</th>
	<th>Penyedia</th>
</tr>
<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
$konek = mysqli_connect('localhost','root','','kopeg');
		mysql_select_db('kopeg');
$edit = $_POST['edit'];
$query = "Select * from harga_pulsa order by kode_pulsa,produk";
$eksekusi = mysql_query($query,$koneksi);
while ($row=mysql_fetch_array($eksekusi,MYSQL_ASSOC))
{
	echo "<tr>";
	echo "<td>{$row['kode_pulsa']}</td>";
	echo "<td>{$row['produk']}</td>";
	echo "<td>{$row['harga_arindo']}</td>";
	echo "<td>{$row['harga_jual']}</td>";
	echo "<td>{$row['fee_kopeg']}</td>";
	echo "<td>{$row['penyedia']}</td>";
	echo "<td><input type=radio name=edit value='{$row[kode_pulsa]}'></td>";
	echo "</tr>";
}
?>
<tr><td colspan="7"><input type="submit" value="HAPUS" name="submit" class="btn btn-danger"></td></tr>
</table></form>
<?php
if (isset($_POST['submit']))
{
	$kode_awal=$_POST['edit'];
	$query = "DELETE from harga_pulsa where kode_pulsa='$kode_awal'";
	$eksekusi = mysql_query($query,$koneksi);
	
}
?>