<?php
    header( 'Content-Type: text/html; charset=utf-8' );
    header("Access-Control-Allow-Origin: http://localhost:4200");
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header("Access-Control-Allow-Headers: Content-Type, Authorization");
    $arr=array(); 
    include("library.php");
    if( isset($_GET['vrno']) && isset($_GET['slno']) && isset($_GET['itemcode']) && isset($_GET['itemname']) && isset($_GET['qty']) && isset($_GET['price']) && isset($_GET['total'])  ){
        $a=new library();	
        $m=$a->db;
        $q="insert into saleslineitems(vrno,slno,itemcode,itemname,qty,price,total) values('{$_GET['vrno']}','{$_GET['slno']}','{$_GET['itemcode']}','{$_GET['itemname']}',{$_GET['qty']},{$_GET['price']},{$_GET['total']})";
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
    //Run the service by:  http://localhost//ANGULAR/SAKIN/insertsaleslineitems.php?vrno=AC-001&slno=1&itemcode=10&itemname=X-RAY%20CHEST%20A/P%20VIEW&qty=1&price=160&total=160
    
    ?>