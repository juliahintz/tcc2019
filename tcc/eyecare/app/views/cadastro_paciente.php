<?php
  include("cabecalho.php");
?>
<!doctype html>
<html lang="en">
  <body>
<section class="container">
 <form class="ui form" >
<h3 class="ui horizontal divider header" class="corPadrao">
          CADASTRO DO PACIENTE
        </h3>
        <div class="divider">.</div>

  <div class="field">
    <label>Nome completo</label>
    <div class="fields">
      <div class="twelve wide field">
        <input type="text" name="shipping[address]" placeholder="Escreva seu nome">
      </div>
      <div class="four wide field">
        <input type="text" name="shipping[address-2]" placeholder="digite seu CPF">
      </div>
    </div>
  </div>
  <div class="fields">
    <div class="field">
      <label>First name</label>
      <input type="date" placeholder="First Name">
    </div>
    <div class="field">
      <label>Telefone</label>
      <input type="text" placeholder="Middle Name">
    </div>
    <div class="field">
      <label>Foto de Perfil</label>
     <button type="file">Selecionar arquivo</button>
    </div>

</div>
</form>

</section>

  </body>

