<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Edit Lokasi Arindo</b>
    </div>
<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
$konek = mysqli_connect('localhost','root','','kopeg');
		mysql_select_db('kopeg');
$edit = $_POST['edit'];
$query = "Select * from arindo_tempat where kode_user='$edit'";
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
	<table class="table-hover table-bordered table" >
		<tr>
			<td>Kode User</td>
			<td><input type="text" name="kode_user" value="<?=$row['kode_user'] ?>"></td>
		</tr>
		<tr>
			<td>User</td>
			<td><input type="text" name="user" value="<?=$row['user'] ?>"></td>
		</tr>
		<tr>
			<td>Tempat</td>
			<td><input type="text" name="tempat" value="<?=$row['tempat'] ?>"></td>
		</tr>
		
		<tr><td colspan="3"><input class="btn btn-primary" value="EDIT" type="submit" name="submit"></td></tr>
	</table>
	
</form>

<?php
}
	if (isset($_POST['submit']))
	{
	
    	
    	$kode_user = $_POST['kode_user'];
    	$user = $_POST['user'];
    	$tempat = $_POST['tempat'];

    	$dbhost = 'localhost';
		$dbuser = 'root';
		$dbpass = '';
		$koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
		$konek = mysqli_connect('localhost','root','','kopeg');
		mysql_select_db('kopeg');
		$hapus = "DELETE from arindo_tempat where kode_user='$kode_user'";
		
		$eksekusihapus = mysqli_query($konek,$hapus);
	$insert = " INSERT INTO `kopeg`.`arindo_tempat`
				VALUES ('$user','$kode_user','$tempat')";
	$sql=mysqli_query($konek,$insert);
	if ($sql)
	{
		echo "Data berhasil diubah";
		include 'view_lokasi_arindo.php';

	}
	else
	{
		echo "Data Gagal Disimpan.";
		
		
	}
	
}

?>