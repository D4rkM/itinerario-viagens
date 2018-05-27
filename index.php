<?php
  require_once('db.php');
  $conn = conecta();
 ?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Lista Jquery</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/jquery-ui.js"></script>
    <!-- <script src="js/jquery-sortable.js"></script> -->
    <script src="js/list.js"></script>
  </head>
  <body>
    <div class="hold">

      <div class="list">
        <ul id="parada_para_selecionar">
          <?php
          $select = "SELECT * FROM parada;";

          $query = mysqli_query($conn, $select);

          if($query){
            while($rs = mysqli_fetch_array($query)){
              ?>
              <li <?php echo('id='.$rs['idparada']); ?>><?php echo($rs['nome']); ?></li>
              <?php
            }
          }else{
            echo("Não foi possível se conectar com o banco.\n". $query ."\n". $select);
          }

          ?>
        </ul>
      </div>

      <div class="list">
        <ul id="parada_selecionada">
        </ul>
      </div>

      <div class="list">
        <form method="post">
          <select id=viagem name="cbx_viagem">
            <?php
            $Vselect = "SELECT * FROM viagem;";

            $Vquery = mysqli_query($conn, $Vselect);

            while($vRs = mysqli_fetch_array($Vquery)){
              ?>
              <option value="<?php echo($vRs['idviagem']); ?>"><?php echo($vRs['nome']); ?></option>
              <?php
            } ?>
          </select>
          <button id="save" type="submit" name="button">Salvar</button>
        </form>
      </div>



    </div>


<!-- <script src='js/jquery-sortable.js'></script> -->
  </body>
</html>
