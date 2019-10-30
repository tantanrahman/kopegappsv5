<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Lihat Lokasi Arindo</b>
    </div>

<div class="row">
    <div class="col-md-6 offset-md-3">
<form method="POST" action="index.php?id=53">
<table class="table-hover table-bordered table mb-4">
<tr>
	<th>No</th>
	<th>Kode User</th>
	<th>User</th>
	<th>Tempat</th>
	<th>Edit</th>
</tr>
<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
$konek = mysqli_connect('localhost','root','','kopeg');
		mysql_select_db('kopeg');
$edit = $_POST['edit'];
$query = "Select * from arindo_tempat order by kode_user";
$eksekusi = mysql_query($query,$koneksi);
$i=1;
while ($row=mysql_fetch_array($eksekusi,MYSQL_ASSOC))
{
	echo "<tr>";
	echo "<td>$i</td>";
	echo "<td>{$row['kode_user']}</td>";
	echo "<td>{$row['user']}</td>";
	echo "<td>{$row['tempat']}</td>";
	echo "<td><input type=radio name=edit value='{$row[kode_user]}'></td>";
	echo "</tr>";
	$i++;
}
?>
<tr><td colspan="5"><input type="submit" value="EDIT" class="btn btn-info"></td></tr>
</table></form>