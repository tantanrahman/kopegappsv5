<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Tambah Lokasi</b>
    </div>
<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
$konek = mysqli_connect('localhost','root','','kopeg');
		mysql_select_db('kopeg');
?>

<?php 
if (isset($_POST['submit'])) {
	} else {
?>
<div class="row">
    <div class="col-md-6 offset-md-3">
<form method="POST">
	<table  class="table-hover table-bordered table" >
		<tr>
			<td>Lokasi</td>
			<td><input type="text" name="lokasi"></td>
		</tr>
		<tr>
			<td>Loket</td>
			<td><input type="text" name="loket"></td>
		</tr>
		<tr>
			<td>Tempat</td>
			<td><input type="text" name="tempat"></td>
		</tr>
		<tr>
			<td>User (Khusus Arindo)</td>
			<td><input type="text" name="user"></td>
		</tr>
		<tr>
			<td>Tempat (Khusus Arindo)</td>
			<td><input type="text" name="tempat_arindo"></td>
		</tr>
		
		
		<tr><td colspan="2"><input type="submit" value="TAMBAH" name="submit" class="btn btn-primary"></td></tr>
	</table>
	
</form>

<?php
}
	if (isset($_POST['submit']))
	{
	
    	
    	$lokasi = $_POST['lokasi'];
    	$loket = $_POST['loket'];
    	$tempat = $_POST['tempat'];
    	$user = $_POST['user'];
    	$tempat_arindo = $_POST['tempat_arindo'];

    	$dbhost = 'localhost';
		$dbuser = 'root';
		$dbpass = '';
		$koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
		$konek = mysqli_connect('localhost','root','','kopeg');
		mysql_select_db('kopeg');
		
	$insert = " INSERT INTO `kopeg`.`lokasi` (lokasi,loket,tempat,user,tempat_arindo) 
				VALUES ('$lokasi','$loket','$tempat','$user','$tempat_arindo')";
	$sql=mysqli_query($konek,$insert);
	if ($sql)
	{
		echo "Data berhasil diubah";
		include 'view_lokasi.php';

	}
	else
	{
		echo "Data Gagal Disimpan.";
		echo mysqli_error();
		
		
	}
	
}

?>