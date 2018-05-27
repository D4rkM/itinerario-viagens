<?php
  require_once('db.php');
  $conn = conecta();

  $lista_paradas = $_POST['paradas'];
  // $lista_paradas = 1;
  $viagem = $_POST['vid'];
  // $viagem = 1;
  $pos = 0;
  // echo('<script>alert("CHEGOU");</script>');

  $select = "SELECT * FROM viagem_parada WHERE id_viagem = $viagem";

  if(mysqli_query($conn, $select)){

    $retorno = "Atualizado";

    $del = "DELETE FROM viagem_parada WHERE id_viagem = $viagem";

    mysqli_query($conn, $del);
  }

  while($pos < sizeof($lista_paradas)){

    $query = "INSERT INTO viagem_parada SET id_viagem = $viagem, id_parada = $lista_paradas[$pos], ordem = $pos;";

    mysqli_query($conn, $query);

    $pos++;
  }

  return $retorno;
?>
