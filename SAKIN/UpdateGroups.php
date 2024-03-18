
<?php
header( 'Content-Type: text/html; charset=utf-8' );

header( 'Content-Type: text/html; charset=utf-8' );
header("Access-Control-Allow-Origin: http://localhost:4200");
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header("Access-Control-Allow-Headers: Content-Type, Authorization");
$arr=array();
include("library.php");
if( isset($_GET['groupcode']) && isset($_GET['groupname']) ){
$a=new library();
$m=$a->db;
$q="update groups set groupname='{$_GET['groupname']}',company='{$_GET['company']}',`show`='{$_GET['SHOW']}',smalldept='{$_GET['smalldept']}',smallnamesl='{$_GET['smallnamesl']}' where groupcode='{$_GET['groupcode']}'";
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

//Run the service by:  http://localhost/ANGULAR/SAKIN/UpdateGroups.php?groupcode=1&groupname=BioChemical

?>
