
<?php
header( 'Content-Type: text/html; charset=utf-8' );
header("Access-Control-Allow-Origin: http://localhost:4200");
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header("Access-Control-Allow-Headers: Content-Type, Authorization");
$tspid=$_GET['tspid'];
$arr=array();
include("library.php");
$a=new library();
$m=$a->db;
$q="select * from tsp where tspid='$tspid' order by tspid";
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

//Run the web service by: http://localhost/ANGULAR/SAKIN/gettsp2.php?tspid=101

?>
