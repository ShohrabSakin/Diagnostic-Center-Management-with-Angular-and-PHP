<?php
    header( 'Content-Type: text/html; charset=utf-8' );
//the next three lines enables CORS
//next line denotes that this php can be accessed from localhost:4200
    header("Access-Control-Allow-Origin: http://localhost:4200");
    header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
    header("Access-Control-Allow-Headers: Content-Type, Authorization");
    $arr=array();
    include("library.php");
    if( isset($_GET['traineeid']) 
    && isset($_GET['name'])
    && isset($_GET['batchid'])
    && isset($_GET['title'])
    && isset($_GET['hours']) 
    && isset($_GET['tspid']) 
    
    ){
        $a=new library();
        $m=$a->db;
        $q="insert into trainees(`traineeid`,`name`,`batchid`,`title`,`hours`,`tspid`) 
        
        values('{$_GET['traineeid']}',
        '{$_GET['name']}',
        '{$_GET['batchid']}',
        '{$_GET['title']}',
        '{$_GET['hours']}',
        '{$_GET['tspid']}'
        )";
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
    // http://localhost/ANGULAR/SAKIN/inserttrainees.php?traineeid=100&name=Akash&batchid=Round-55&title=WDPF&hours=900&tspid=T2

    ?>
