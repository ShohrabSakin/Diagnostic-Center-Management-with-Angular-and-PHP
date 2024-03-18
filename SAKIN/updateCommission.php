<?php
    header( 'Content-Type: text/html; charset=utf-8' );
    header("Access-Control-Allow-Origin: http://localhost:4200");
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header("Access-Control-Allow-Headers: Content-Type, Authorization");
    $arr=array(); 
    include("library.php");
    if( isset($_GET['department']) && isset($_GET['percent']) ){
        $a=new library();	
        $m=$a->db;
        $q="UPDATE `commission` SET `department` = '{$_GET['department']}', `percent` = '{$_GET['percent']}' WHERE `commission`.`department` = '{$_GET['department']}'";
        $r=$m->query($q);
        if(!$r)	{
            echo "{success:".mysqli_errno($m).", Query: $q}";		
        }
        else{
            echo '{"success":"true","total":"'.$m->affected_rows.'"}';	  
        }
	
        }
        else{
            echo '{success:input query string}'; 
        }
        
//Run the service by:  http://localhost/ANGULAR/SAKIN/updateCommission.php?department=E.C.G&percent=40

    ?>