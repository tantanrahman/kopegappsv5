<?php 
    $tanggal1 =$_POST['nilai'];
    $tanggal2 =$_POST['nilai2'];
?>

<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Lembar Pendapatan SOPP Finnet
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
        <table class="table table-bordered table-hover table-striped mb-3">
            <tr>
                <th>NO</th>           
                <th>LOKASI</th>
                <th>USER</th>
                <th>JUMLAH LEMBAR</th>
                <th>PENDAPATAN</th>
                <th>ADMIN</th>
                <th>JUMLAH</th>
            </tr>
            <?php
                $server = "localhost";
                $user = "root";
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
                $tanggal=date("d/m/Y");   
                $konek = mysql_connect($server,$user,$password) or die("Koneksi gagal");

                mysql_select_db($database, $konek) or die("Database tidak bisa dibuka");
                $c = 0;
                if ($tanggal1==$tanggal2) {
                    $query=mysql_query("SELECT * from (select lokasi.lokasi,lokasi.loket,sopp.user as user from lokasi left join sopp on lokasi.loket = sopp.user  AND (tanggal = '$tampil_date' or tanggal is null) group by lokasi.loket) as A left join (select sopp.tanggal as pstanggal, kaliuser.lokasi as pslokasi, kaliuser.user as psloket, sopp.user as psuser, sum(bill) as psl11, sum(amount) as pspendapatan, sum(bill)*kaliuser.xadmin as psadmin, sum(amount)+sum(bill)*kaliuser.xadmin as psjumlah from kaliuser left join sopp on kaliuser.user = sopp.user AND (tanggal = '$tampil_date' or tanggal is null) group by kaliuser.user ) as B on A.lokasi=B.pslokasi");
                } else {
                    $query=mysql_query("SELECT * from (select lokasi.lokasi,lokasi.loket,sopp.user as user from lokasi left join sopp on lokasi.loket = sopp.user  AND ((tanggal between '$tampil_date' AND '$tampil_date2') or tanggal is null) group by lokasi.lokasi) as A left join (select sopp.tanggal as pstanggal, kaliuser.lokasi as pslokasi, kaliuser.user as psloket, sopp.user as psuser, sum(bill) as psl11, sum(amount) as pspendapatan, sum(bill)*kaliuser.xadmin as psadmin, sum(amount)+sum(bill)*kaliuser.xadmin as psjumlah from kaliuser left join sopp on kaliuser.user = sopp.user AND (tanggal between '$tampil_date' AND '$tampil_date2') group by kaliuser.user ) as B on A.lokasi=B.pslokasi");   
                }

                    while($row=mysql_fetch_array($query)){
                        $jumlah_desimal ="0";
                        $pemisah_desimal =",";
                        $pemisah_ribuan =".";

                        $tampildatabayar =  number_format($row['pspendapatan'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                        $tampildatabayar2 =  number_format($row['psadmin'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                        $tampildatabayar3 =  number_format($row['psjumlah'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                        $tampildatabayar4 =  number_format($row['psl11'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
            ?>
            <tr>
                <td class="tx"><?php echo $c=$c+1;?></td>
                <td class="tx"><?php echo $row['lokasi'];?></td>
                <td class="tx"><?php echo $row['loket'];?></td>
                <td align="right"><?php echo $tampildatabayar4;?></td>
                <td align="right"><?php echo $tampildatabayar;?></td>
                <td align="right"><?php echo $tampildatabayar2;?></td>
                <td align="right"><?php echo $tampildatabayar3;?></td>
            </tr>
            <?php
                $jumlah = $jumlah + $row['psl11'];
                $jumlah2 = $jumlah2 + $row['pspendapatan'];
                $jumlah3 = $jumlah3 + $row['psadmin'];
                $jumlah4 = $jumlah4 + $row['psjumlah'];
                }
                $tampil = number_format($jumlah, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                $tampil2 = number_format($jumlah2, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                $tampil3 = number_format($jumlah3, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                $tampil4 = number_format($jumlah4, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
            ?>
            <tr>
                <td class="tx" align="center" colspan="3"><b>JUMLAH</td>
                <td class="tx" align="right"><?php echo "<b>"."$tampil";?></td>
                <td class="tx" align="right"><?php echo "<b>"."$tampil2";?></td>
                <td class="tx" align="right"><?php echo "<b>"."$tampil3";?></td>
                <td class="tx" align="right"><?php echo "<b>"."$tampil4";?></td>
            </tr>
        </table>
    </div>
</div>