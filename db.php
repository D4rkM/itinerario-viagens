<?php
    function conecta(){
      $conn = mysqli_connect('localhost', 'root', 'bcd127', 'db_list');
      if($conn){
        return $conn;
      }else{
        echo('<script>console.log("no connection");</script>');
      }
      
    }



 ?>
