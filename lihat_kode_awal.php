<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Lihat Kode Awal</b>
    </div>

    <div class="row">
        <div class="col-md-6 offset-md-3">
            <form method="POST" action="index.php?id=38">
                <table class="table-hover table-bordered table mb-4">
                    <tr>
                        <th>Kode Awal</th>
                        <th>Produk</th>
                        <th>Edit</th>
                    </tr>
                    <?php
                        $dbhost = 'localhost';
                        $dbuser = 'root';
                        $dbpass = '';
                        $koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
                        $konek = mysqli_connect('localhost','root','','kopeg');
                                mysql_select_db('kopeg');
                        $edit = $_POST['edit'];
                        $query = "Select * from kode_awal order by produk,nomor_awal";
                        $eksekusi = mysql_query($query,$koneksi);
                        while ($row=mysql_fetch_array($eksekusi,MYSQL_ASSOC))
                    {
                        ?>
                        <tr>
                            <td><?=$row['nomor_awal']?></td>
                            <td><?=$row['produk']?></td>
                            <td><input type=radio name=edit value='<?=$row[nomor_awal]?>'></td>
                        </tr>
                        <?php
                    }
                    ?>
                    <tr>
                        <td colspan="3"><input type="submit" value="PILIH" class="btn btn-info">
                        </td>
                    </tr>
                </table>
            </form>