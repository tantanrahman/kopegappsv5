<?php
  
  session_start();
  if(isset($_SESSION['login'])) {
  error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED);

  include 'header.php';
  include 'sidebar.php';
  include 'switch.php';
  include 'footer.php';

  } else {
    include 'login.php';
  }
?>
