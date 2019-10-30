<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Tambah Harga Pulsa</b>
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
if (isset($_POST['submit']))
	{
	}
	else
	{
		?>

<div class="row">
        <div class="col-md-6 offset-md-3">
<form method="POST">
	<table  class="table-hover table-bordered table" >
		<tr>
			<td>Kode Pulsa</td>
			<td><input type="text" name="kode_pulsa"></td>
		</tr>
		<tr>
			<td>Produk *Harus sesuai dengan produk pada bagian kode awal*</td>
			<td><input type="text" name="produk"></td>
		</tr>

		<tr>
			<td>Harga Arindo</td>
			<td><input type="text" name="harga_arindo"></td>
		</tr>
		<tr>
			<td>Harga Jual</td>
			<td><input type="text" name="harga_jual"></td>
		</tr>
		<tr>
			<td>Fee Kopeg</td>
			<td><input type="text" name="fee_kopeg"></td>
		</tr>
		<tr>
			<td>Penyedia</td>
			<td><input type="text" name="penyedia"></td>
		</tr>
		
		
		<tr><td colspan="3"><input type="submit" value="TAMBAH" name="submit" class="btn btn-primary"></td></tr>
	</table>
	
</form>

<?php
}
	if (isset($_POST['submit']))
	{
	
    	$kode_pulsa=$_POST['kode_pulsa'];
    	$produk = $_POST['produk'];
    	$harga_arindo = $_POST['harga_arindo'];
    	$harga_jual = $_POST['harga_jual'];
    	$fee_kopeg = $_POST['fee_kopeg'];
    	$penyedia = $_POST['penyedia'];

    	$dbhost = 'localhost';
		$dbuser = 'root';
		$dbpass = '';
		$koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
		$konek = mysqli_connect('localhost','root','','kopeg');
		mysql_select_db('kopeg');
		
	$insert = " INSERT INTO `kopeg`.`harga_pulsa` 
				VALUES ('$kode_pulsa','$produk',$harga_arindo,$harga_jual,$fee_kopeg,'$penyedia')";
	$sql=mysqli_query($konek,$insert);
	if ($sql)
	{
		echo "Data Disimpan";
		

	}
	else
	{
		echo "Data Gagal Disimpan.";
		
	}
	
}

?>