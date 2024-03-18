<?php
    header( 'Content-Type: text/html; charset=utf-8' );
    header("Access-Control-Allow-Origin: http://localhost:4200");
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header("Access-Control-Allow-Headers: Content-Type, Authorization");
    $arr=array(); 
    include("library.php");
    if( isset($_GET['doctorid']) &&isset($_GET['doctorname']) &&isset($_GET['qualification']) &&isset($_GET['institution']) &&isset($_GET['designation']) &&isset($_GET['fee'])  &&isset($_GET['picture'])){
        $a=new library();	
        $m=$a->db;
        $q="insert into doctors(doctorid,doctorname,qualification,institution,designation,fee,picture) values('{$_GET['doctorid']}','{$_GET['doctorname']}','{$_GET['qualification']}','{$_GET['institution']}','{$_GET['designation']}','{$_GET['fee']}','{$_GET['picture']}')";
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

    //Run the service by:  http://localhost/ANGULAR/SAKIN/insertdoctors.php?
    
    ?>