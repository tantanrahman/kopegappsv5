<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Lembar Hapus Konpensasi</b>
    </div>
<?php

$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';

$koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
$konek = mysqli_connect('localhost','root','','kopeg');
		mysql_select_db('kopeg');

$query = "Select tanggal_masalah,tanggal_konpensasi,keterangan from konpensasi";
$eksekusi = mysql_query($query,$koneksi);
echo "<form method=post >";
echo "<table id='mytable'class='table table-bordered table-striped table-fixed-header'><tr><th>Tanggal Masalah</th><th>Tanggal Konpensasi</th><th>Keterangan</th><th>Hapus</th></tr>";
while ($row=mysql_fetch_array($eksekusi,MYSQL_ASSOC)) 
{
	echo "<tr>";
	echo "<td>{$row['tanggal_masalah']}</td>";
	echo "<td>{$row['tanggal_konpensasi']}</td>";
	echo "<td>{$row['keterangan']}</td>";
	echo "<td><input type=radio name=edit value={$row['tanggal_masalah']}></td>";
	echo "</tr>";
}
echo "<tr><td colspan=4><input type=submit value='Pilih' name=submit class='btn btn-danger'></td></tr>";
echo "</table></form>";
		if (isset($_POST['submit']))
		{
		$edit = $_POST['edit'];
		$hapus = "DELETE from konpensasi where tanggal_masalah='$edit'";
		$eksekusihapus = mysqli_query($konek,$hapus);
		if ($eksekusihapus)
		{
			echo "Data Berhasil Di hapus";
			
		}
		else
		{
			echo "Data gagal Di hapus";
		}
		}

?>