<?php
error_reporting(E_ERROR | E_PARSE); 
$folder = "uploads/";
    if (is_dir($folder))
    {
            if ($open = opendir($folder))
            {   
                while (($file=readdir($open))!== FALSE) 
                {
                    unlink($folder.$file);
                }
            }
    }

?>