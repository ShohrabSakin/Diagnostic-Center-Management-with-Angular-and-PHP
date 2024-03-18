
<?php
header( 'Content-Type: text/html; charset=utf-8' );
header("Access-Control-Allow-Origin: http://localhost:4200");
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header("Access-Control-Allow-Headers: Content-Type, Authorization");
include("library.php");
if (isset($_GET['tspid'])){
$arr=array();
$a=new library();
$m=$a->db;
$q="select traineeid,name,batchid,title,hours from trainees where tspid='{$_GET['tspid']}'";
//echo $q;
$r=$m->query($q);
if(!$r)
{
echo "{success:".mysqli_errno($m).", Query: $q}";
return;
}
while($c=$r->fetch_object())
{
$arr[]=$c;
}
echo '['. trim(json_encode($arr),"[]")."]";
}
else{
echo '{success:input query string}';
}
//run: http://localhost/ANGULAR/SAKIN/getitembytspid.php?tspid=101
?>
