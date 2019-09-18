<?php 
    $tanggal1 =$_POST['nilai'];
    $tanggal2 =$_POST['nilai2'];
?>

<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Lembar Pendapatan VOUCHER Finnet
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
                <th>NO</th>
                <th>LOKASI</th>
                <th>USSER</th>
                <th>DENOM</th>
                <th>JUMLAH LEMBAR</th>
                <th>PENDAPATAN</th>
                <th>JUMLAH PENDAPATAN</th>
                <th>FEE</th>
            </tr>
            <?php
                $server   = "localhost";
                $user     = "root";
                $password = "";
                $database = "kopeg";
                $tanggal1 = $_POST['nilai'];
                $tanggal2 = $_POST['nilai2'];

                $date = explode("-", $tanggal1);
                $date2 = explode("-", $tanggal2);
                $arr = array("$date[2]","$date[1]","$date[0]");
                $arr2 = array("$date2[2]","$date2[1]","$date2[0]");
                $tampil_date = implode("-", $arr);
                $tampil_date2 = implode("-", $arr2);
                ini_set('display_errors',TRUE);
                $konek = mysql_connect($server,$user,$password) or die("Koneksi gagal");
                mysql_select_db($database, $konek) or die("Database tidak bisa dibuka");
                $c = 0;
                if ($tanggal1==$tanggal2) {
                    $query=mysql_query("SELECT lokasi.lokasi,lokasi.loket as looket, voucher.tanggal, voucher.loket,  voucher.denom as denom, sum(voucher.total_kopeg) as total_kopeg1, voucher.total_kopeg as total_kopeg2, count(voucher.denom) as hitung  ,  voucher.user, fee_ca*count(voucher.denom) as fee_ca from lokasi left join voucher on voucher.user=lokasi.loket where tanggal='$tampil_date' or tanggal is NULL group by lokasi, denom");
                } else {
                    $query=mysql_query("SELECT lokasi.lokasi,lokasi.loket as looket, voucher.tanggal, voucher.loket,  voucher.denom as denom, sum(voucher.total_kopeg) as total_kopeg1, voucher.total_kopeg as total_kopeg2, count(voucher.denom) as hitung  ,  voucher.user, fee_ca*count(voucher.denom) as fee_ca from lokasi left join voucher on voucher.user=lokasi.loket where ((tanggal  between '$tampil_date' AND '$tampil_date2') or tanggal is NULL) group by lokasi,denom");   
                }

                while($row=mysql_fetch_array($query)){
                    $jumlah_desimal ="0";
                    $pemisah_desimal =",";
                    $pemisah_ribuan =".";

                    $tampildatabayar2 =  number_format($row['total_kopeg1'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                    $tampildatabayar3 =  number_format($row['denom'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                    $tampildatabayar4 =  number_format($row['total_kopeg2'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                    $tampildatabayar5 =  number_format($row['fee_ca'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
            ?>
            <tr>
                <td class="tx"><?php echo $c=$c+1;?></td>
                <td class="tx"><?php echo $row['lokasi'];?></td>
                <td class="tx"><?php echo $row['looket'];?></td>
                <td align="right"><?php echo $tampildatabayar3;?></td>
                <td align="right"><?php echo $row['hitung'];?></td>
                <td align="right"><?php echo $tampildatabayar4;?></td>
                <td align="right"><?php echo $tampildatabayar2;?></td>
                <td align="right"><?php echo $tampildatabayar5;?></td>
            </tr>
            <?php
                $jumlah = $jumlah + $row['hitung'];
                $jumlah2 = $jumlah2 + $row['total_kopeg1'];
                $jumlah3 = $jumlah3 + $row['fee_ca'];
                $jumlah4 = $jumlah4 + $row['total_kopeg2'];
                }
                $tampil =  number_format($jumlah, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                $tampil2 =  number_format($jumlah2, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                $tampil3 =  number_format($jumlah3, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                $tampil4 =  number_format($jumlah4, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
            ?>
            <tr>
                <td class="tx" align="center" colspan="4"><b>JUMLAH</td>
                <td class="tx" align="right"><?php echo "<b>"."$tampil";?></td>
                <td class="tx" align="right"><?php echo "<b>"."$tampil4";?></td>
                <td class="tx" align="right"><?php echo "<b>"."$tampil2";?></td>
                <td class="tx" align="right"><?php echo "<b>"."$tampil3";?></td>
            </tr>
        </table>
    </div>
</div>