<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$koneksi = mysql_connect($dbhost, $dbuser, $dbpass);

mysql_select_db(kopeg);
$user = $_POST['user'];
$xfee = $_POST['xfee'];
$xtitip = $_POST['xtitip'];
$xadmin = $_POST['xadmin'];

$query = "UPDATE kaliuser set xfee=$xfee, xtitip=$xtitip,xadmin=$xadmin where user='$user'";
$update = mysql_query($query,$koneksi);

if ($update)
{
	
	?>
    <script language="JavaScript">
            window.alert ("Berhasil Mengubah Data");
            window.location.href="index.php?id=56";
    </script>
    <?php

}


?>