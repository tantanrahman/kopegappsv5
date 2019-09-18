<form method="POST" enctype="multipart/form-data">
    <p><b>Silakan pilih semua file yang akan di upload</b></p>
    <br>
    <input type="file" id="file" name="files[]" multiple="multiple" accept="" />
    <br>
    <input class="btn btn-sm btn-primary mt-3" type="submit" value="Upload" name="upload" />
</form>

<?php 

    $valid_formats = array("xls", "xlsx");
    $max_file_size = 1024*1000; //100 kb
    $path = "uploads/"; // Upload directory
    $count = 0;

    if(isset($_POST) and $_SERVER['REQUEST_METHOD'] == "POST"){
        // Loop $_FILES to exeicute all files
        foreach ($_FILES['files']['name'] as $f => $name) {     
            if ($_FILES['files']['error'][$f] == 4) {
                continue; // Skip file if any error found
            }	       
            if ($_FILES['files']['error'][$f] == 0) {	           
                if ($_FILES['files']['size'][$f] > $max_file_size) {
                    $message[] = "$name is too large!.";
                    continue; // Skip large files
                }
                elseif( ! in_array(pathinfo($name, PATHINFO_EXTENSION), $valid_formats) ){
                    $message[] = "$name is not a valid format";
                    continue; // Skip invalid file formats
                }
                else{ // No error found! Move uploaded files 
                    if(move_uploaded_file($_FILES["files"]["tmp_name"][$f], $path.$name))
                    $count++; // Number of successfully uploaded file
                }
            }
        }
    }

    if (isset($_POST['upload'])) {
    ?>      
        <div class="container">
            <div class="row">
                <form method="GET" action="query_upload_data2.php">
                    <input autocomplete="off" id="datepicker" class="form-control mt-3" type="text" name="nilai" placeholder="Tanggal">                    
                    <br>
                    <input class="btn btn-success" type="submit" value="UPLOAD SEKARANG">
                </form>
            </div>  
        </div>
	<?php
    }
?>
