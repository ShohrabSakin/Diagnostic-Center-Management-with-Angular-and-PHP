
<?php

header( 'Content-Type: text/html; charset=utf-8' );
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: PUT, GET, POST");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
$folderPath = "uploads/";
$postdata = file_get_contents("php://input");
if(!empty($postdata)){
$request = json_decode($postdata);
$image_parts = explode(";base64,", $request->image);
$name=$request->imagename;
$image_type_aux = explode("image/", $image_parts[0]);
$image_base64 = base64_decode($image_parts[1]);
$file = $folderPath . $name;
if(file_put_contents($file, $image_base64)){
echo '{"success":"true"}';
}
}

//Run the service by: http://localhost/ANGULAR/SAKIN/imageupload.php

?>
