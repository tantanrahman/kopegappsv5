<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Edit Admin User</b>
    </div>

<?php
    $dbhost = 'localhost';
    $dbuser = 'root';
    $dbpass = '';
    $koneksi = mysql_connect($dbhost, $dbuser, $dbpass);

    mysql_select_db(kopeg);
    $ubah = $_POST['ubah'];
    $kueri = "SELECT  * from kaliuser where user = '$ubah'";
    $eksekusi = mysql_query($kueri,$koneksi);
?>
<div class="row">
    <div class="col-md-6 offset-md-3">
<form method="post" action="index.php?id=58">
<?php
    while ($row = mysql_fetch_array($eksekusi,MYSQL_ASSOC)) {
?>
    <table class="table table-hover table-bordered">
        <tr>
            <td>Lokasi</td>
            <td><input type='text' class="form-control" value=<?=$row['lokasi']?> readonly='readonly'></td>
        </tr>
        <tr>
            <td>User</td>
            <td><input type='text' class="form-control" value=<?=$row['user']?> readonly='readonly'></td>
        </tr>
        <tr>
            <td>Fee</td>
            <td><input type='text' class="form-control" value=<?=$row['xfee']?>></td>
        </tr>
        <tr>
            <td>Titip</td>
            <td><input type='text' class="form-control" value=<?=$row['xtitip']?>></td>
        </tr>
        <tr>
            <td>Admin</td>
            <td><input type='text' class="form-control" value=<?=$row['xadmin']?>></td>
        </tr>
    </table>
<?php
}
?>
<hr>
<input class="btn btn-primary mb-4" type="submit" value="EDIT">
</form>


