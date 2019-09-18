<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Lembar Penghapusan</b>
    </div>
    <div class="row">
        <div class="col-md-6 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h4>Penghapusan Per Transaksi</h4>
                    <br>
                    <form action="index.php?id=13" method="POST">
                    <table class="text-center">
                        <tr>
                            <td><input class="form-control" autocomplete="off" type="text" id="datepicker" name="nilai" placeholder="Masukan Tanggal"></td>
                            <td>
                                <select name="pen" class="form-control">
                                    <option value = "pln"> PLN </option>
                                    <option value = "pdam"> PDAM </option>
                                    <option value = "sopp"> SOPP </option>
                                    <option value = "voucher"> VOUCHER </option>
                                    <option value = "indovision"> INDOVISION </option>
                                    <option value = "arindo"> ARINDO </option>
                                    <option value = "transvision"> TRANSVISION </option>
                                </select>
                            </td>
                        </tr>
                    </table>
                    <br>
                    <button type="submit" name="hapus" class="btn btn-sm btn-danger"><b>HAPUS</b></button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-6 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h4>Penghapusan Per Tanggal</h4>
                    <br>
                    <form action="index.php?id=13" method="POST">   
                        <input class="form-control" autocomplete="off" type="text" id="datepicker2" name="nilai1" placeholder="Masukan Tanggal">
                        <br>
                        <button type="submit" name="semua" class="btn btn-sm btn-danger"><b>HAPUS</b></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>