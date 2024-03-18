<?php
header( 'Content-Type: text/html; charset=utf-8' );
header("Access-Control-Allow-Origin: http://localhost:4200");
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header("Access-Control-Allow-Headers: Content-Type, Authorization");
$arr=array();
include("library.php");
if( isset($_GET['tspid']) && isset($_GET['tspname']) && isset($_GET['location']) ){
$a=new library();
$m=$a->db;
$q="insert into tsp(tspid,tspname,location) values('{$_GET['tspid']}','{$_GET['tspname']}','{$_GET['location']}')";
$r=$m->query($q);
if(!$r) {
echo "{success:".mysqli_errno($m).", Query: $q}";
}
else{
echo '{"success":"true","total":"'.$m->affected_rows.'"}';
}
}
else{
echo '{success:input query string}';
}
//Run the service by: http://localhost/ANGULAR/SAKIN/inserttsp.php?tspid=T1&tspname=Daffodil&location=Agrabad

?>
