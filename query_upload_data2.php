<?php

define ("DB_HOST", "localhost"); // set database host
define ("DB_USER", "root"); // set database user
define ("DB_PASS",""); // set database password
define ("DB_NAME","kopeg"); // set database name
include 'assets/Classes/PHPExcel/IOFactory.php';
    $tanggalsekarang = date("d-m-Y");
    $folder = "uploads/";
    $tanggal = $_GET['tanggal'];
    $date = explode("-", $tanggal);
    $arr = array("$date[2]","$date[1]","$date[0]");
    $tampil_date = implode("-", $arr);
    $dbhost = 'localhost';
    $dbuser = 'root';
    $dbpass = '';
    $konek = mysqli_connect('localhost','root','','kopeg');
    mysql_select_db('kopeg');
    

    if (is_dir($folder))
    {
            if ($open = opendir($folder))
            {   
                while (($file=readdir($open))!== FALSE) 
                {
                    if (stripos($file, "TselDet") OR stripos($file, "ThreeDet") OR stripos($file, "SmartDet"))
                    {
                        $insert = "INSERT INTO `kopeg`.`upload` 
                                   VALUES ('$tampil_date','$file','VOUCHER')";
                        $sql=mysqli_query($konek,$insert);  
                        include('query_voucher.php');
                    }
                    else if (stripos($file, "PDAM"))
                    {
                        $insert = "INSERT INTO `kopeg`.`upload` 
                                   VALUES ('$tampil_date','$file','PDAM')";
                        $sql=mysqli_query($konek,$insert);  
                       include('query_pdam.php');
                    }
                    if (stripos($file, "SettleLoket"))
                    {
                        $insert = "INSERT INTO `kopeg`.`upload` 
                                   VALUES ('$tampil_date','$file','PLN')";
                        $sql=mysqli_query($konek,$insert);  
                        include('query_pln.php');
                    }
                    if (stripos($file, "P2HSUM"))
                    {
                        $insert = "INSERT INTO `kopeg`.`upload` 
                                   VALUES ('$tampil_date','$file','JASTEL')";
                        $sql=mysqli_query($konek,$insert);  
                        include('query_sopp.php');
                    }
                    if (stripos($file, "rindo"))
                    {
                        $insert = "INSERT INTO `kopeg`.`upload` 
                                   VALUES ('$tampil_date','$file','ARINDO')";
                        $sql=mysqli_query($konek,$insert);  
                       include('query_arindo.php');
                    }
                    if (stripos($file, "PAYTVDet_03_55"))
                    {
                        $insert = "INSERT INTO `kopeg`.`upload` 
                                   VALUES ('$tampil_date','$file','INDOVISION')";
                        $sql=mysqli_query($konek,$insert);  
                       include('query_indovision.php');
                    }
                    if (stripos($file, "AORA"))
                    {
                        $insert = "INSERT INTO `kopeg`.`upload` 
                                   VALUES ('$tampil_date','$file','AORA')";
                        $sql=mysqli_query($konek,$insert);  
                       include('query_aora.php');
                    }
                    if (stripos($file, "PAYTVDet_03_20"))
                    {
                        $insert = "INSERT INTO `kopeg`.`upload` 
                                   VALUES ('$tampil_date','$file','TRANSVISION')";
                        $sql=mysqli_query($konek,$insert);  
                       include('query_transvision.php');
                    }
                    
                }
            }
    }
    else
    {
        echo "Folder Tidak ada";
    }
    include ("hapus_file.php");
   
?>