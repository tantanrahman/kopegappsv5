<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>TAMBAH FEE PDAM
            <?php 
                $dbhost = 'localhost';
                $dbuser = 'root';
                $dbpass = '';
                $koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
                $konek = mysqli_connect('localhost','root','','kopeg');
                mysql_select_db('kopeg');
            ?>
        </b>
    </div>
    <form method="POST">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <table class="table-hover table-bordered table" >
                <tr>
                    <td><b>PDAM</b></td>
                    <td><input class="form-control" type="text" name="pdam"></td>
                </tr>
                <tr>
                    <td><b>Regional</b></td>
                    <td><input class="form-control" type="text" name="regional"></td>
                </tr>
                <tr>
                    <td><b>Biaya Admin</b></td>
                    <td><input class="form-control" type="text" name="biaya_admin"></td>
                </tr>
                <tr>
                    <td><b>Fee Mitra</b></td>
                    <td><input class="form-control" type="text" name="fee_mitra"></td>
                </tr>
                <tr><td colspan="2" style="text-align:center;"><input type="submit" name="submit" class="btn btn-primary"></td></tr>
            </table>
        </div>
    </div>
    </form>
</div>

<?php 
    
    if (isset($_POST['submit'])) {
	
    	$pdam = $_POST['pdam'];
    	$regional = $_POST['regional'];
    	$biaya_admin = $_POST['biaya_admin'];
    	$fee_mitra = $_POST['fee_mitra'];

    	$dbhost = 'localhost';
		$dbuser = 'root';
		$dbpass = '';
		$koneksi = mysql_connect($dbhost, $dbuser, $dbpass);
		$konek = mysqli_connect('localhost','root','','kopeg');
		mysql_select_db('kopeg');
		
	    $insert = " INSERT INTO `kopeg`.`fee_pdam` VALUES ('$pdam','$regional',$biaya_admin,$fee_mitra)";
	    $sql=mysqli_query($konek,$insert);
	    if ($sql) {
		    echo "<script language='JavaScript'>
                window.alert ('Data berhasil ditambah');
                window.location.href='index.php?id=20';
            </script>";
        }else{
		    echo "Data Gagal Disimpan.";
	}
	
}
?>