<div class="container mt-3">
    <div class="alert alert-dark text-center">
        <b>Halaman Utama</b>
    </div>
    <div class="alert alert-success" role="alert">
        <h4 class="alert-heading text-center">Selamat Datang! <strong><?=$_SESSION['nama']?></strong>, anda login sebagai <strong><?=$_SESSION['tipe_user']?></h4></strong>
        <hr>
        <p>Pastikan terlebih dahulu data yang akan diupload sudah sesuai dengan syarat dan ketentuan yang ada pada aplikasi.</p>
        <h3 class="text-center">PERHATIKAN!</h3>
        <h4><strong>SETELAH UPLOAD WAJIB TERLEBIH DAHULU MEMBUKA RINCIAN SOPP</strong></h4>
    </div>
    <hr>
    <h4 class="text-center">Data yang Terupload</h4>
    <?php 
        include "koneksi.php";

        $query = $con->query("SELECT * FROM sopp GROUP BY tanggal DESC LIMIT 1");
        while($row = $query->fetch_assoc()){
            $tanggal = $row['tanggal'];
            echo "Data <strong>SOPP</strong> terakhir yang diupload Tanggal <b>".date("d-F-Y", strtotime($tanggal))."</b>";
        }
    ?>
    <br>
    <?php
        $query2 = $con->query("SELECT * FROM pdam GROUP BY tanggal DESC LIMIT 1");
        while($row = $query2->fetch_assoc()){
            $tanggal = $row['tanggal'];
            echo "Data <strong>PDAM</strong> terakhir yang diupload Tanggal <b>".date("d-F-Y", strtotime($tanggal))."</b>";
        }

    ?>
    <br>
    <?php
        $query3 = $con->query("SELECT * FROM pln GROUP BY tanggal DESC LIMIT 1");
        while($row = $query3->fetch_assoc()){
            $tanggal = $row['tanggal'];
            echo "Data <strong>PLN</strong> terakhir yang diupload Tanggal <b>".date("d-F-Y", strtotime($tanggal))."</b>";
        }

    ?>
    <br>
    <?php
        $query4 = $con->query("SELECT * FROM voucher GROUP BY tanggal DESC LIMIT 1");
        while($row = $query4->fetch_assoc()){
            $tanggal = $row['tanggal'];
            echo "Data <strong>VOUCHER</strong> terakhir yang diupload Tanggal <b>".date("d-F-Y", strtotime($tanggal))."</b>";
        }

    ?>
    <br>
    <?php
        $query4 = $con->query("SELECT * FROM arindo_trx GROUP BY tanggal DESC LIMIT 1");
        while($row = $query4->fetch_assoc()){
            $tanggal = $row['tanggal'];
            echo "Data <strong>ARINDO</strong> terakhir yang diupload Tanggal <b>".date("d-F-Y", strtotime($tanggal))."</b>";
        }

    ?>
        
</div>