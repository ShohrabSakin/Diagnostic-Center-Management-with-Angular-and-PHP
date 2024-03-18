
<?php
header( 'Content-Type: text/html; charset=utf-8' );
header("Access-Control-Allow-Origin: http://localhost:4200");
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header("Access-Control-Allow-Headers: Content-Type, Authorization");
$arr=array();
$d1=$_GET['d1'];

//  $d11=explode("/",$d1);
//  $d1="$d11[2]-$d11[0]-$d11[1]";

$d2=$_GET['d2'];

//  $d21=explode("/",$d2);
//  $d2="$d21[2]-$d21[0]-$d21[1]";

include("library.php");
$a=new library();
$m=$a->db;
$q="SELECT a.slno,a.itemcode,a.itemname,-a.qty,a.price,-a.total,a.vrno,b.Dicount,b.Net,b.Paid,b.Due,b.Date,b.CustomerName,b.total from saleslineitems a inner join salestotal b on a.vrno=b.vrno where b.Date between '$d1' and '$d2' and a.vrno like 'AC%' order by Date,a.vrno,slno";
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

//Run the web service by: http://localhost/ANGULAR/SAKIN/getvoucherwisesalesdetails.php?vrno=AC00004&slno=6

?>
