<?php 

    error_reporting();
    $link = $_GET['id'];

    switch($link) {
        case 1:
        include "finnet.php";
        break;
        case 2:
        include "lembar_pendapatan.php";
        break;
        case 3:
        include "pen_pln.php";
        break;
        case 4:
        include "pen_pdam.php";
        break;
        case 5:
        include "finnet.php";
        break;
        case 6:
        include "pen_sopp.php";
        break;
        case 7:
        include "pen_voucher.php";
        break;
        case 8:
        include "lembar_keuangan.php";
        break;
        case 9:
        include "rincian_sopp.php";
        break;
        case 10:
        include "rekap_pendapatan.php";
        break;
        case 11:
        include "pen_arindo.php";
        break;
        case 12:
        include "lembar_hapus.php";
        break;
        case 13:
        include "query_hapus_pendapatan.php";
        break;
        case 14:
        include "lembar_pengaturan.php";
        break;

        default :
        include "halamanutama.php";
        break;
    }

?>