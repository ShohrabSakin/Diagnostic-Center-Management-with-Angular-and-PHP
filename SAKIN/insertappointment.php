<?php
    header( 'Content-Type: text/html; charset=utf-8' );
    header("Access-Control-Allow-Origin: http://localhost:4200");
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header("Access-Control-Allow-Headers: Content-Type, Authorization");
    $arr=array(); 
    include("library.php");
    if( isset($_GET['date']) && isset($_GET['doctorid']) && isset($_GET['slno']) && isset($_GET['patientname']) && isset($_GET['email']) && isset($_GET['mobile'])){
        $a=new library();	
        $m=$a->db;
        $q="insert into appointment(date,doctorid,slno,patientname,email,mobile) values('{$_GET['date']}','{$_GET['doctorid']}','{$_GET['slno']}','{$_GET['patientname']}','{$_GET['email']}','{$_GET['mobile']}')";
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
    
    //Run the service by:  http://localhost/ANGULAR/SAKIN/insertappointment.php?date=2023-10-01&doctorid=1&slno=1&patientname=Habib&email=abc@xyz.com&mobile=0181444774

    ?>