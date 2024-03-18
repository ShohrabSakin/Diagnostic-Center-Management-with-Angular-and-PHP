
<?php
header( 'Content-Type: text/html; charset=utf-8' );
header("Access-Control-Allow-Origin: http://localhost:4200");
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header("Access-Control-Allow-Headers: Content-Type, Authorization");
$arr=array();
include("library.php");
if( isset($_GET['tspid']) ){
$a=new library();
$m=$a->db;
$q="delete from trainees where tspid='{$_GET['tspid']}'; delete from tsp where tspid='{$_GET['tspid']}'";
//echo $q;
$r=$m->multi_query($q);
if(!$r) {
echo "{success:".mysqli_errno($m).", Query: $q}";
}
else{
echo '{"success":"true"}';
}

}
else{
echo '{success:input query string}';
}
// http://localhost/ANGULAR/SAKIN/deleteitemtsp.php?tspid=T5

?>
