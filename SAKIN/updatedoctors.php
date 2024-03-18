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
        $q="update doctors set doctorid='{$_GET['doctorid']}',doctorname='{$_GET['doctorname']}',qualification='{$_GET['qualification']}',institution='{$_GET['institution']}',designation='{$_GET['designation']}',fee='{$_GET['fee']}',picture='{$_GET['picture']}' where doctorid='{$_GET['doctorid']}'";
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
    
    //Run the service by:  http://localhost/ANGULAR/SAKIN/updatedoctors.php

    ?>