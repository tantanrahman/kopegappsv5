<?php 
    $tanggal1 =$_POST['nilai'];
    $tanggal2 =$_POST['nilai2'];
?>

<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Lembar Pendapatan PLN Finnet
            <?php 
                if($tanggal1==$tanggal2) {
                    echo $tanggal1;
                } else {
                    echo "$tanggal1-$tanggal2";
                }
            ?>
        </b>
    </div>

<div class="table-responsive">
    <table class="table table-bordered table-hover table-striped table-fixed mb-3">
        <tr>
            <th>No</th>
            <th>Lokasi</th>
            <th>Usser</th>
            <th>Jumlah Lembar</th>
            <th>Jumlah Pendapatan</th>
            <th>Biaya Admin</th>
            <th>Fee Mitra</th>
            <th>Fee Finnet</th>
        </tr>
        <?php
            $server = "localhost";
            $user = "root";
            $password = "";
            $database = "kopeg";

            $tanggal1 = $_POST['nilai'];
            $tanggal2 = $_POST['nilai2'];
            ini_set('display_errors',TRUE);
            $date = explode("-", $tanggal1);
            $date2 = explode("-", $tanggal2);
            $arr = array("$date[2]","$date[1]","$date[0]");
            $arr2 = array("$date2[2]","$date2[1]","$date2[0]");
            $tampil_date = implode("-", $arr);
            $tampil_date2 = implode("-", $arr2);

            $tanggal=date("Y/m/d");
            $koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
            $konek = mysql_connect($server,$user,$password) or die("Koneksi gagal");

            mysql_select_db($database, $konek) or die("Database tidak bisa dibuka");
            $c = 0;
            if ($tanggal1==$tanggal2) {
                    $query=mysql_query("SELECT lokasi.lokasi, lokasi.loket, pln.tanggal, sum(pln.bill) as bill, sum(pln.total_kopeg) as total_kopeg, ceiling(pln.fee_admin/pln.bill) as bagi,tanggal from lokasi left join pln on lokasi.loket=pln.loket where pln.tanggal = '$tampil_date' or pln.tanggal is NULL  group by lokasi.lokasi, bagi");
            } else {
                        $query=mysql_query("SELECT lokasi.lokasi, lokasi.loket,pln.tanggal, sum(pln.bill) as bill, sum(pln.total_kopeg) as total_kopeg, ceiling(pln.fee_admin/pln.bill) as bagi,tanggal from lokasi left join pln on lokasi.loket=pln.loket where (pln.tanggal between '$tampil_date' AND '$tampil_date2') or pln.tanggal is NULL group by lokasi.lokasi, bagi");
                    }
            
            while($row=mysql_fetch_array($query)){
                $jumlah_desimal ="0";
                $pemisah_desimal =",";
                $pemisah_ribuan =".";

                if ($row['bagi']==2750) {
                    $fee_mitra = 2000 * $row['bill'];
                    $fee_finnet = 800 * $row['bill'];
                } else if ($row['bagi']==3000) {
                    $fee_mitra = 2000 * $row['bill'];
                    $fee_finnet = 1000 * $row['bill'];
                } else if ($row['bagi']==5000) {
                    $fee_mitra = 3300 * $row['bill'];
                    $fee_finnet = 1700 * $row['bill'];
                } else {
                    $fee_mitra=0;
                    $fee_finnet = 0;
                }


$tampildatabayar =  number_format($row['total_kopeg'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
$tampildatabayar2 =  number_format($row['bagi'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
$tampildatabayar3 =  number_format($row['bill'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
$tampildatabayar4 =  number_format($fee_mitra, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
$tampildatabayar5 =  number_format($fee_finnet, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
        ?>
        <tr> 
            <td><?php echo $c=$c+1;?></td>
            <td><?php echo $row['lokasi'];?></td>
            <td><?php echo $row['loket'];?></td>
            <td align="right"><?php echo $tampildatabayar3;?></td>
            <td align="right"><?php echo $tampildatabayar;?></td>
            <td align="right"><?php echo $tampildatabayar2;?></td>
            <td align="right"><?php echo $tampildatabayar4;?></td>
            <td align="right"><?php echo $tampildatabayar5;?></td>
        </tr>
            <?php
                $jumlah = $jumlah + $tampildatabayar3;
                $jumlah2 = $jumlah2 + $row['total_kopeg']+$hasilkonpensasipln['nominal'];
                $jumlah3 = $jumlah3 + $row['bagi'];
                $jumlah4 = $jumlah4 + $fee_mitra;
                $jumlah5 = $jumlah5 + $fee_finnet;
                       
                   }
                   $tampildatabayar4 =  number_format($jumlah2, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                   $tampildatabayar5 =  number_format($jumlah3, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                   $tampildatabayar6 =  number_format($jumlah4, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                   $tampildatabayar7 =  number_format($jumlah5, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                   ?>
               <tr>
                   <th colspan="3" align="center" class="tx">Jumlah</th>
                   <td align="right"><?php echo "<b>"."$jumlah";?></td>
                   <td align="right"><?php echo "<b>"."$tampildatabayar4";?></td>
                   <td align="right"><?php echo "<b>"."$tampildatabayar5";?></td>
                   <td align="right"><?php echo "<b>"."$tampildatabayar6";?></td>
                   <td align="right"><?php echo "<b>"."$tampildatabayar7";?></td>
               </tr>
    </table>
</div>
</div>