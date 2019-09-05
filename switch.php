<?php 

    error_reporting();
    $link = $_GET['id'];

    switch($link) {
        case 1:
        include "finnet.php";
        break;


        default :
        include "halamanutama.php";
        break;
    }

?>