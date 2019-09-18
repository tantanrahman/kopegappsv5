<?php 
    $tanggal1 =$_POST['nilai'];
    $tanggal2 =$_POST['nilai2'];
?>
<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Lembar Pendapatan PDAM Finnet
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
                <th>USSER</th>
                <th>JUMLAH LEMBAR</th>
                <th>JUMLAH PENDAPATAN</th>
                <th>BIAYA ADMIN</th>
                <th>FEE MITRA</th>
                <th>PENDAPATAN MURNI</th>
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
                   
                $query=mysql_query("SELECT pdam.loket AS pdloket, sum(pdam.bill) AS pdbill, sum(pdam.total_kopeg) AS pdpendapatan, fee_pdam.biaya_admin AS pdadmin, fee_pdam.fee_mitra AS pdfee FROM pdam JOIN fee_pdam ON pdam.nama_area=fee_pdam.pdam AND tanggal BETWEEN'$tampil_date' AND '$tampil_date2' GROUP BY pdloket");

                while($row=mysql_fetch_array($query)){
                    $jumlah_desimal ="0";
                    $pemisah_desimal =",";
                    $pemisah_ribuan =".";

                    $tampildatabayar3 =  number_format($row['pdbill'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                    $tampildatabayar =  number_format($row['pdpendapatan'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                    $tampildatabayar2 =  number_format($row['pdfee'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                    $tampildatabayar4 =  number_format($row['pdadmin'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                    $tampildatabayar5 =  number_format($jumlah_fee_mitra, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                    $tampildatabayar6 =  number_format($row['pdpendapatan']-$row['pdfee'], $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
            ?>
            <tr>
                <td class="tx"><?php echo $c=$c+1;?></td>
                <td class="tx"><?php echo $row['pdloket'];?></td>
                <td align="right"><?php echo $tampildatabayar3;?></td>
                <td align="right"><?php echo $tampildatabayar;?></td>
                <td align="right"><?php echo $tampildatabayar4;?></td>                       
                <td align="right"><?php echo $tampildatabayar2;?></td>
                <td align="right"><?php echo $tampildatabayar6;?></td>                  
            </tr>
            <?php
                $jumlah1 = $jumlah1 + $row['pdbill'];
                $jumlah2 = $jumlah2 + $row['pdpendapatan'];
                $jumlah3 = $jumlah3 + $row['pdfee'];
                $jumlah4 = $jumlah4 + $row['pdadmin'];
                $jumlah5 = $jumlah5 + $row['pdpendapatan']-$row['pdfee'];
                    }				
                $tampil1 =	number_format($jumlah1, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                $tampil2 =  number_format($jumlah2, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                $tampil3 =  number_format($jumlah3, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                $tampil4 =  number_format($jumlah4, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
                $tampil5 =  number_format($jumlah5, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan);
            ?>

                <tr>
                    <td colspan="2" align="center"><b>JUMLAH</td>
                    <td align="right"><?php echo "<b>"."$tampil1";?></td>
                    <td align="right"><?php echo "<b>"."$tampil2";?></td>
                    <td align="right"><?php echo "<b>"."$tampil4";?></td>
                    <td align="right"><?php echo "<b>"."$tampil3";?></td>
                    <td align="right"><?php echo "<b>"."$tampil5";?></td>
                </tr>
        </table>
    </div>
</div>