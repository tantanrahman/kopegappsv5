<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>FEE PDAM
            <?php 
                if($tanggal1==$tanggal2) {
                    echo $tanggal1;
                } else {
                    echo "$tanggal1-$tanggal2";
                }
            ?>
        </b>
    </div>
    
    <a href="index.php?id=22" class="btn btn-primary btn-sm mb-3">TAMBAH FEE PDAM</a>
    <a href="index.php?id=22" class="btn btn-danger btn-sm mb-3">HAPUS FEE PDAM</a>

    <form action="index.php?id=21" method="POST">
        <div class="table-resposive">
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>PDAM</th>
                        <th>REGIONAL</th>
                        <th>BIAYA ADMIN</th>
                        <th>FEE MITRA</th>
                        <th>EDIT</th>
                    </tr>
                </thead>
                <?php 
                    $dbhost = 'localhost';
                    $dbuser = 'root';
                    $dbpass = '';
                    $koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
                    $konek = mysqli_connect('localhost','root','','kopeg');
                            mysql_select_db('kopeg');
                    $edit = $_POST['edit'];
                    $query = "SELECT * FROM fee_pdam ORDER BY pdam";
                    $eksekusi = mysql_query($query,$koneksi);
                    while ($row=mysql_fetch_array($eksekusi,MYSQL_ASSOC)) {
                ?>
                <tbody>
                    <tr>
                        <td><?=$row['pdam']?></td>
                        <td><?=$row['regional']?></td>
                        <td><?=$row['biaya_admin']?></td>
                        <td><?=$row['fee_mitra']?></td>
                        <td><input type=radio name=edit value="<?=$row[pdam]?>"></td>
                    </tr>
                </tbody>
                <?php
                    }
                ?>
            </table>
            <center>
                <button type="submit" class="btn btn-sm btn-primary mt-3 mb-3"><b>SUBMIT</b></button>
            </center>
        </div>
    </form>
</div>