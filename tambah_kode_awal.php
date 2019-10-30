<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Tambah Kode Awal</b>
    </div>
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
			<th>Nomor Awal</th>
			<td><input type="text" name="nomor_awal"></td>
		</tr>
		<tr>
			<th>Produk *Harus sesuai dengan produk pada bagian harga pulsa*</th>
			<td><input type="text" name="produk"></td>
		</tr>
		
		
		<tr><td colspan="3"><input type="submit" value="TAMBAH" name="submit" class="btn btn-primary"></td></tr>
	</table>
	
</form>

<?php
}
	if (isset($_POST['submit']))
	{
	
    	$nomor_awal=$_POST['nomor_awal'];
    	$produk = $_POST['produk'];

    	$dbhost = 'localhost';
		$dbuser = 'root';
		$dbpass = '';
		$koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
		$konek = mysqli_connect('localhost','root','','kopeg');
		mysql_select_db('kopeg');
		
	$insert = " INSERT INTO `kopeg`.`kode_awal` 
				VALUES ('$nomor_awal','$produk')";
	$sql=mysqli_query($konek,$insert);
	if ($sql)
	{
		echo "Data berhasil ditambah";
		

	}
	else
	{
		echo "Data Gagal Disimpan.";
		
	}
	
}

?>