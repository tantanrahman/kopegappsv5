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

        default :
        include "halamanutama.php";
        break;
    }

?>