<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>EDIT Lokasi</b>
    </div>
<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
$konek = mysqli_connect('localhost','root','','kopeg');
		mysql_select_db('kopeg');
$edit = $_POST['edit'];
$query = "Select * from lokasi where user_id='$edit'";
$eksekusi = mysql_query($query,$koneksi);
$row=mysql_fetch_array($eksekusi,MYSQL_ASSOC);

?>

<?php 
if (isset($_POST['submit']))
	{
	}
	else
	{
		?>
<div class="row">
    <div class="col-md-6 offset-md-3">
<form method="POST">
	<table class="table-hover table-bordered table mb-4">
		<tr>
			<td>Lokasi</td>
			<td><input type="text" name="lokasi" value="<?=$row['lokasi'] ?>">
				<input type="hidden" name="edit" value="<?=$row['user_id'] ?>"></td>
		</tr>
		<tr>
			<td>Loket</td>
			<td><input type="text" name="loket" value="<?=$row['loket'] ?>"></td>
		</tr>
		<tr>
			<td>Tempat</td>
			<td><input type="text" name="tempat" value="<?=$row['tempat'] ?>"></td>
		</tr>
		<tr>
			<td>User (Khusus Arindo)</td>
			<td><input type="text" name="user" value="<?=$row['user'] ?>"></td>
		</tr>
		<tr>
			<td>Tempat (Khusus Arindo)</td>
			<td><input type="text" name="tempat_arindo" value="<?=$row['tempat_arindo'] ?>"></td>
		</tr>
		
		<tr><td colspan="7"><input class="btn btn-primary" type="submit" value="EDIT" name="submit"></td></tr>
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
		$hapus = "DELETE from lokasi where user_id='$edit'";
		
		$eksekusihapus = mysqli_query($konek,$hapus);
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
		
		
	}
	
}

?>