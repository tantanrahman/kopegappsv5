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

        $query = "DELETE from $pen where tanggal='$tampil_date'";
        $eksekusi = mysql_query($query,$konek);
    
        if ($eksekusi) {
            echo "<script>alert('Berhasil Hapus Data');location.href='index.php';</script>";
        } else {
            echo "<div class='container-fluid mt-3'><div class='alert alert-danger text-center' role='alert'>
            <b>Hapus Data Gagal</b>
          </div>";
        }
    }

    if (isset($_POST['semua'])) {
        $tanggal = $_POST['nilai1'];
        $date = explode("-", $tanggal);
        $arr = array("$date[2]","$date[1]","$date[0]");
        $tampil_date = implode("-", $arr);

        $query3 = mysql_query("DELETE from pln where tanggal='$tampil_date'");
        $query4 = mysql_query("DELETE from pdam where tanggal='$tampil_date'");
        $query5 = mysql_query("DELETE from sopp where tanggal='$tampil_date'");
        $query6 = mysql_query("DELETE from voucher where tanggal='$tampil_date'");
        $query7 = mysql_query("DELETE from arindo_trx where tanggal='$tampil_date'");

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

    if (isset($_POST['kosong'])) {
        $tanggal = $_POST['nilai1'];
        $date = explode("-", $tanggal);
        $arr = array("$date[2]","$date[1]","$date[0]");
        $tampil_date = implode("-", $arr);

        $query = mysql_query("TRUNCATE TABLE PLN");
        $query2 = mysql_query("TRUNCATE TABLE PDAM");
        $query3 = mysql_query("TRUNCATE TABLE SOPP");
        $query4 = mysql_query("TRUNCATE TABLE VOUCHER");
        $query5 = mysql_query("TRUNCATE TABLE ARINDO_TRX");
        $query6 = mysql_query("TRUNCATE TABLE AORA");
        $query7 = mysql_query("TRUNCATE TABLE INDOVISION");
        $query8 = mysql_query("TRUNCATE TABLE TRANSVISION");
        $query9 = mysql_query("TRUNCATE TABLE TITIPAN");
        $query10 = mysql_query("TRUNCATE TABLE TITIPAN2");
        $query11 = mysql_query("TRUNCATE TABLE RK_INPUT");
        $query12 = mysql_query("TRUNCATE TABLE SALDO");

        $eksekusi = mysql_query($query,$konek);
        $eksekusi2 = mysql_query($query2,$konek);
        $eksekusi3 = mysql_query($query3,$konek);
        $eksekusi4 = mysql_query($query4,$konek);
        $eksekusi5 = mysql_query($query5,$konek);
        $eksekusi6 = mysql_query($query6,$konek);
        $eksekusi7 = mysql_query($query7,$konek);
        $eksekusi8 = mysql_query($query8,$konek);
        $eksekusi9 = mysql_query($query9,$konek);
        $eksekusi10 = mysql_query($query10,$konek);
        $eksekusi11 = mysql_query($query11,$konek);
        $eksekusi12 = mysql_query($query12,$konek);

        if (!$eksekusi) {
            echo "<script>alert('Berhasil Mengkosongkan');location.href='index.php';</script>";
        } else {
            echo "Hapus Data Gagal";
        }

    }

    

?>