<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Admin User</b>
    </div>

<?php
    $dbhost = 'localhost';
    $dbuser = 'root';
    $dbpass = '';
    $koneksi = mysql_connect($dbhost, $dbuser, $dbpass);

    mysql_select_db(kopeg);

    $kueri = "SELECT  * from kaliuser";
    $eksekusi = mysql_query($kueri,$koneksi);
?>

<form method="post" action="index.php?id=57">
<table class="table table-bordered table-hover">
                    <thead class="header">
<tr>
	<th>ID</th>
	<th>Lokasi</th>
	<th>User</th>
	<th>X Fee</th>
	<th>X Titip</th>
	<th>X Admin</th>
	<th>EDIT</th>
</tr>
</thead>
<?php
$i=1;
while ($row = mysql_fetch_array($eksekusi,MYSQL_ASSOC)) {
	echo "<tr>
	<td class='tx'>$i</td>
	<td class='tx'>{$row['lokasi']}</td>
	<td class='tx'>{$row['user']}</td>
	<td>{$row['xfee']}</td>
	<td>{$row['xtitip']}</td>
	<td>{$row['xadmin']}</td>
	<td><input type='radio' name='ubah' value='{$row['user']}'></td>
</tr>";
	
	$i++;
}

?>
</table>
<hr>
<div class="text-center mb-4">
	<input type="submit" value="UBAH" class="btn btn-primary">
</div>
</form>