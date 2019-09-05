<?php
    session_start();
	$host="localhost";
	$user="root";
	$password="";	
	$koneksi=mysql_connect($host,$user,$password) or die("Tidak konek");
	mysql_select_db("kopeg");
	

    if (isset($_POST['login'])) {
        $username = $_POST['username'];
        $password = md5($_POST['password']);
        // query untuk mendapatkan record dari nak
        $query = "SELECT * FROM user WHERE username = '$username'";
        $hasil = mysql_query($query);
        $data = mysql_fetch_array($hasil);

    // cek kesesuaian passwordword
    if ($password == $data['password']) {
        echo "sukses";

        // menyimpan username dan level ke dalam session
        header('location: index.php');
        $_SESSION['username'] = $data['username'];
        $_SESSION['nama'] = $data['nama'];
        $_SESSION['tipe_user'] = $data['tipe_user'];
        $_SESSION['login']= true;
	} else {
?>

    <script language="JavaScript">
        window.alert ("Login Gagal!");
        window.location.href="index.php";
    </script>

<?php
}

} else {
    echo "tidak terambil";
}
?>