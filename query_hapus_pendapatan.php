<?php
    $server = "localhost";
    $user = "root";
    $password = "";
    $database = "kopeg";
    $konek = mysql_connect($server,$user,$password) or die("Koneksi gagal");
    mysql_select_db($database, $konek) or die("Database tidak bisa dibuka");

    if(isset($_POST['hapus'])) {
	    $tanggal = $_POST['nilai'];
        $pen = $_POST['pen'];
        $date = explode("-", $tanggal);
        $arr = array("$date[2]","$date[1]","$date[0]");
        $tampil_date = implode("-", $arr);
        $pen = $_POST['pen'];

        $query3 = "DELETE FROM fee_arindo where tanggal='$tampil_date'";
        $eksekusi3 = mysql_query($query3,$konek);

        $query = "DELETE from $pen where tanggal='$tampil_date'";
        $query2 = "DELETE from upload where tanggal='$tampil_date' and pen like '%$pen%'";

	    if ($pen=='arindo_trx') {
			$query = "DELETE from arindo_trx where tanggal='$tampil_date'";
			$query2 = "DELETE from upload where tanggal='$tampil_date' and pen like '%arindo%'";

			$query3="DELETE FROM fee_arindo where tanggal='$tampil_date'";
			$eksekusi3 = mysql_query($query3,$konek);
        }

        $eksekusi = mysql_query($query,$konek);
        $eksekusi2 = mysql_query($query2,$konek);
    
        if ($eksekusi) {
            echo "Hapus Data berhasil";
        } else {
            echo "Hapus Data gagal";
        }
    }

    if (isset($_POST['semua'])) {
        $tanggal = $_POST['nilai1'];
        $date = explode("-", $tanggal);
        $arr = array("$date[2]","$date[1]","$date[0]");
        $tampil_date = implode("-", $arr);

        $query3 = mysql_query('TRUNCATE TABLE pln');
        $query4 = mysql_query('TRUNCATE TABLE pdam');
        $query5 = mysql_query('TRUNCATE TABLE sopp');
        $query6 = mysql_query('TRUNCATE TABLE voucher');
        $query7 = mysql_query('TRUNCATE TABLE arindo_trx');

        $eksekusi3 = mysql_query($query3,$konek);
        $eksekusi4 = mysql_query($query4,$konek);
        $eksekusi5 = mysql_query($query5,$konek);
        $eksekusi6 = mysql_query($query6,$konek);
        $eksekusi7 = mysql_query($query7,$konek);

        if (!$eksekusi3) {
            echo "<script>alert('Berhasil Hapus Data');location.href='index.php';</script>";
        } else {
            echo "Hapus Data Gagal";
        }
    }

    

?>