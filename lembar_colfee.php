<div class="container-fluid mt-3">
    <div class="alert alert-dark text-center">
        <b>Lembar Colfee</b>
    </div>
    <div class="row">
        <div class="col-md-6 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h3>FINNET</h3>
                    <hr>
                    <form action="cetak_colfee_finnet.php" method="post" target="_blank">
                    <table>
                        <tr>
                            <td>
                                <select name="bulan" class="form-control">
                                <option selected="selected">Bulan</option>
                                <?php
                                    $bln=array(1=>"Januari","Februari","Maret","April","Mei","Juni","July","Agustus","September","Oktober","November","Desember");
                                    for($bulan=1; $bulan<=12; $bulan++){
                                    if($bulan<=9) { echo "<option value='$bulan'>$bln[$bulan]</option>"; }
                                    else { echo "<option value='$bulan'>$bln[$bulan]</option>"; }
                                    }
                                ?>
                                </select>
                            </td>
                        <td class="col-md-3">
                        <select name="tahun" class="form-control">
                        <option selected="selected">Tahun</option>
						<?php
							;
							for ($tahun=2015;$tahun<=2050;$tahun++)
							{
								echo "<option value='$tahun'>$tahun</option>";
							}
						?>
						</select>
                        </td>
                        
                    </tr>
                </table>
                <br>
                <button type="submit" class="btn btn-primary" name="filter"><i class="fa fa-print fa-fw"></i> CETAK COLFEE FINNET</button>
                </form>

                <hr>

                <form action="cetak_kuitansi_colfee.php" method="post" target="_blank">
                <table>
                    <tr>
                        <td>
                            <select name="bulan" class="form-control">
                            <option selected="selected">Bulan</option>
                            <?php
                                $bln=array(1=>"Januari","Februari","Maret","April","Mei","Juni","July","Agustus","September","Oktober","November","Desember");
                                for($bulan=1; $bulan<=12; $bulan++){
                                if($bulan<=9) { echo "<option value='$bulan'>$bln[$bulan]</option>"; }
                                else { echo "<option value='$bulan'>$bln[$bulan]</option>"; }
                                }
                            ?>
                            </select>
                        </td>
                        <td class="col-md-3">
                        <select name="tahun" class="form-control">
                        <option selected="selected">Tahun</option>
                        <?php
                            ;
                            for ($tahun=2015;$tahun<=2050;$tahun++)
                            {
                                echo "<option value='$tahun'>$tahun</option>";
                            }
                        ?>
                        </select>
                        </td>
                        
                    </tr>
                </table>
                <br>
                <button type="submit" class="btn btn-primary" name="filter"><i class="fa fa-print fa-fw"></i> CETAK KUITANSI COLFEE FINNET</button>
                </form>
                </div>
            </div>
        </div>
        <div class="col-md-6 grid-margin stretch-card">
            <div class="card text-center">
                <div class="card-body">
                    <h3>ARINDO</h3>
                    <hr>
                    <form action="cetak_colfee_arindo.php" method="post">
                <table>
                    <tr>
                        <td>
                            <select name="bulan" class="form-control">
                            <option selected="selected">Bulan</option>
                            <?php
                            $bln=array(1=>"Januari","Februari","Maret","April","Mei","Juni","July","Agustus","September","Oktober","November","Desember");
                            for($bulan=1; $bulan<=12; $bulan++){
                            if($bulan<=9) { echo "<option value='$bulan'>$bln[$bulan]</option>"; }
                            else { echo "<option value='$bulan'>$bln[$bulan]</option>"; }
                            }
                            ?>
                            </select>
                        </td>
                        <td class="col-md-3">
                        <select name="tahun" class="form-control">
                        <option selected="selected">Tahun</option>
						<?php
							;
							for ($tahun=2015;$tahun<=2050;$tahun++)
							{
								echo "<option value='$tahun'>$tahun</option>";
							}
						?>
						</select>
                        </td>
                        
                    </tr>
                </table>
                <br>
                <button type="submit" class="btn btn-primary" name="filter"><i class="fa fa-print fa-fw"></i> CETAK COLFEE ARINDO</button>
                </form>
                </div>
            </div>
        </div>
</div>
