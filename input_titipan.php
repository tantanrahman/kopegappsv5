<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Lembar Input Titipan dan Talangan
            <?php 
                if($tanggal1==$tanggal2) {
                    echo $tanggal1;
                } else {
                    echo "$tanggal1-$tanggal2";
                }
            ?>
        </b>
    </div>

    <h4 class="text-center">
        Input Titipan dan Talangan
            <?php 
                $tanggal1 = $_POST['nilai'];
                $date = explode("-", $tanggal1);
                $arr = array("$date[2]","$date[1]","$date[0]");
                $tampil_date = implode("-", $arr);
                if ($tanggal1==$tanggal2){
                    echo "$tanggal1";
                }else{
                    echo "$tanggal1";
                }
            ?>
    </h4>
    <hr>
    <?php 
        $dbhost = 'localhost';
        $dbuser = 'root';
        $dbpass = '';
        $koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
        $konek = mysqli_connect('localhost','root','','kopeg');
        mysql_select_db('kopeg');
        $tanggal1 = $_POST['nilai'];
        $date = explode("-", $tanggal1);
        $arr = array("$date[2]","$date[1]","$date[0]");
        $tampil_date = implode("-", $arr);
        $cari = "SELECT lokasi.tempat,titipan.titipan, titipan.tanggal,titipan.talangan from lokasi left join titipan on lokasi.tempat=titipan.tempat and tanggal='$tampil_date' group by tempat";
        $eksekusi = mysql_query($cari);
    ?>
    <form action="indexphp?id=19" method="POST">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th style="text-align:center;">TEMPAT</th>
                            <th style="text-align:center;">TITIPAN</th>
                            <th style="text-align:center;">TALANGAN</th>
                        </tr>
                    </thead>
                        <?php 
                            while ($data = mysql_fetch_array($eksekusi,MYSQL_ASSOC)) {
                                ?>
                            <tr>
                                <td><?=$data[tempat]?></td>
                                <td><input type=text class='form-control' value="<?=$data[titipan]?>" name='titipan[]'></td>
                                <td><input type=text class='form-control' value="<?=$data[talangan]?>" name='talangan[]'><input type=hidden name='tanggal[]' value="<?=$tampil_date.$data['tempat']?>"></td>
                            </tr>
                                <?php
                            }
                        ?>
                </table>
                <center>
                    <input type="submit" value="Simpan" name="" class="btn btn-primary mt-3 mb-3">
                </center>
            </div>
        </div>
    </form>
</div>