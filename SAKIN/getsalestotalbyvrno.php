<?php
    header( 'Content-Type: text/html; charset=utf-8' );
    header("Access-Control-Allow-Origin: http://localhost:4200");
    header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
    header("Access-Control-Allow-Headers: Content-Type, Authorization");
    $arr=array(); 
    if (isset($_GET['vrno'])){
        include("library.php");
        $a=new library();	
        $m=$a->db;
        $q="select * from salestotal where vrno='{$_GET['vrno']}' limit 1";
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
        // $r1=$m->query($q);
        // $results=$r1->num_rows;
        echo '['. trim(json_encode($arr),"[]")."]";
    }
    else{
        echo '{"success":"input query string"}'; 
    }
    //Run the web service by: http://localhost/ANGULAR/SAKIN/getsalestotalbyvrno.php?vrno=ac-00003
    ?>