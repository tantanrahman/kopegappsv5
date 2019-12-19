<?php 
    error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED);
    $dbhost = 'localhost';
    $dbuser = 'root';
    $dbpass = '';
    $koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
    mysql_select_db(kopeg);
    $tanggalsekarang = date("d-m-Y")
?>

<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Upload FEE ARINDO
            <?php 
                if($tanggal1==$tanggal2) {
                    echo $tanggal1;
                } else {
                    echo "$tanggal1-$tanggal2";
                }
            ?>
        </b>
    </div>

    <form name="myForm" id="myForm" onSubmit="return validateForm()" method="POST" enctype="multipart/form-data">
        <center>
            <table>
                <tr>
                    <td>
                    <input class="form-control" id="datepicker" autocomplete="off" type="text" name="nilai" placeholder="Tanggal">
                    </td>
                    <td></td>
                    <td>
                        <select name="kode_user" class="form-control">
                          <?php
                                $carilokasi = "SELECT kode_user FROM arindo_tempat";
                                $eksekusilokasi = mysql_query($carilokasi,$koneksi);
                                while ($konpensasi = mysql_fetch_array($eksekusilokasi,MYSQL_ASSOC))
                                {
                                    echo "<option value='{$konpensasi[kode_user]}'>{$konpensasi[kode_user]}</option>";
                                }
                          ?>
                        </select>
                    </td>
                </tr>
            </table>
            <br>
            <input type="file" id="filepegawaiall" name="filepegawaiall">
            <hr>
            <input type="submit" name="submit" value="UPLOAD" class="btn btn-primary">
        </center>
    </form>

<?php
    if (isset($_POST['submit'])) {
?>
    <div id="progress" style="width:500px;border:1px solid #ccc;"></div>
    <div id="info"></div>
<?php
    }
?>

<script type="text/javascript">
    function validateForm()
    {
        function hasExtension(inputID, exts) {
            var fileName = document.getElementById(inputID).value;
            return (new RegExp('(' + exts.join('|').replace(/\./g, '\\.') + ')$')).test(fileName);
        }

        if(!hasExtension('filepegawaiall', ['.xls'])){
            alert("Hanya file XLS (Excel 2003) yang diijinkan.");
            return false;
        }
    }
</script>

<?php
    require "excel_reader.php";

    if(isset($_POST['submit'])){
    
        $target = basename($_FILES['filepegawaiall']['name']) ;
        move_uploaded_file($_FILES['filepegawaiall']['tmp_name'], $target);
        $data = new Spreadsheet_Excel_Reader($_FILES['filepegawaiall']['name'],false);
        $baris = $data->rowcount($sheet_index=0);
        $id=1;
    for ($i=3; $i<=$baris; $i++) {
        $barisreal = $baris-1;
        $k = $i-1;
        $percent = intval($k/$barisreal * 100)."%";

        echo '<script language="javascript">
        document.getElementById("progress").innerHTML="<div style=\"width:'.$percent.'; background-color:lightblue\">&nbsp;</div>";
        document.getElementById("info").innerHTML="'.$k.' data berhasil diinsert ('.$percent.' selesai).";
        </script>';

        $tanggal1 = $_POST['nilai'];
        $date = explode("-", $tanggal1);
        $arr = array("$date[2]","$date[1]","$date[0]");
        $tampil_date = implode("-", $arr);
        $tanggal = $tampil_date;
        $kode_user = $_POST['kode_user'];
        $transaksi    = $data->val($i, 2);
        $id           = $data->val($i, 3);
        $lembar       = $data->val($i, 4);
        $tagihan      = $data->val($i, 5);
      
        $query = "INSERT into fee_arindo values('$tanggal','$kode_user','$transaksi','$id',$lembar,$tagihan)";
        $hasil = mysql_query($query);
        echo "$query";
        if (!$hasil) {
            echo "<br>gagal : ".mysql_error();
        }
        flush();
        $id++;
    }
        unlink($_FILES['filepegawaiall']['name']);
    }
?>
</div>