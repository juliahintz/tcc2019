<?php
  include("cabecalho.php");
?>

<!doctype html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8" />
    <title>Imagem de Fundo Preenchendo Toda a Tela</title>
    <style>
       * {
    margin: 0;
    padding:0;
}

/* para garantir que estes elementos ocuparão toda a tela */
body, html {
    width: 100%;
    height: 100%;
    font-family: Arial, Tahoma, sans-serif;
}

#fundo-externo {
    overflow: hidden; /* para que não tenha rolagem se a imagem de fundo for maior que a tela */
    width: 100%;
    height: 100%;
    position: relative; /* criamos um contexto para posicionamento */
}

#fundo {
    position: fixed; /* posição fixa para que a possível rolagem da tela não revele espaços em branco */
    width: 100%;
    height: 100%;
}

#fundo img {
    width: 100%; /* com isso imagem ocupará toda a largura da tela. Se colocarmos height: 100% também, a imagem irá distorcer */
    position: absolute;
}

#site {
    position: absolute;
    top: 30%;
    left: 57%;
    padding: 3%;
    margin-left: -300px; /* por causa do posicionamento absoluto temos que usar margem negativa para centralizar o site */
    background:  #f5f5f5; /* fundo branco para navegadores que não suportam rgba */
    background: rgba(1,1,1,0.7); /* fundo branco com um pouco de transparência */
}

p {
    margin-bottom: 1.5em;
}
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
    <script>
        // Função adaptImage()
// Parâmetros: targetimg (objeto jquery com elementos selecionados)
function adaptImage(targetimg) {
    var wheight = $(window).height(); // altura da janela do navegador
    var wwidth = $(window).width(); // largura da janela do navegador

    // removemos os atributos de largura e altura da imagem
    targetimg.removeAttr("width")
    .removeAttr("height")
    .css({ width: "", height: "" }); // removemos possíveis regras css também

    var imgwidth = targetimg.width(); // largura da imagem
    var imgheight = targetimg.height(); // altura da imagem

    var destwidth = wwidth; // largura que a imagem deve ter
    var destheight = wheight; // altura que a imagem deve ter

    // aqui vamos determinar o tamanho final da imagem
    if(imgheight < wheight) {
    // se a altura da imagem for menor que a altura da tela, fazemos um cálculo
    // para redefinir a largura da imagem para bater com a altura que queremos
    destwidth = (imgwidth * wheight)/imgheight;

    $('#fundo img').height(destheight);
        $('#fundo img').width(destwidth);
    }

    // aqui utilizamos um cálculo simples para determinar o posicionamento da imagem
    // para que a mesma fique no meio da tela
    // posição = dimensão da imagem/2 - dimensão da tela/2
    destheight = $('#fundo img').height();
    var posy = (destheight/2 - wheight/2);
    var posx = (destwidth/2 - wwidth/2);

    //se o cálculo das posições der resultado positivo, trocamos para negativo
    if(posy > 0) {
    posy *= -1;
    }
    if(posx > 0) {
    posx *= -1;
    }

    // colocamos através da função css() do jquery o posicionamento da imagem
    $('#fundo').css({'top': posy + 'px', 'left': posx + 'px'});
    }

    //quando a janela for redimensionada, adaptamos a imagem
    $(window).resize(function() {
    adaptImage($('#fundo img'));
});

//quando a página carregar, fazemos o mesmo
$(window).load(function() {
    $(window).resize();
});
    </script>
    <link href="https://fonts.googleapis.com/css?family=EB+Garamond&display=swap" rel="stylesheet">
</head>
<body>

<div id="fundo-externo">
    <div id="fundo">
        <img src="imagens/fundo_login.jpg" alt="" />
    </div>
</div>
<div id="site">
  
  <div class="row">
    <div class="col">
      <form>
        <div class="form-group">
            <h3 class="ui horizontal divider header" id="corPadrao">
          LOGIN DO USUÁRIO
        </h3>
        <div class="divider">.</div>
          <label for="exampleInputEmail1" style="color: white;">Email</label>
          <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Insira seu email....">
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1" style="color: white;">Senha</label>
          <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Insira sua senha...">
        </div>
        <div class="form-group form-check" id="ladoLado">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1" style="color: white;">Manter Conectado</label>
        </div>
        <div class="form-group form-check" id="ladoLado">
          <a href="" class="corPretaSublinhado" style="color: white;">Esqueceu sua senha?</a>
        </div>
        <button type="submit" class="btn btn-primary" id="tamanhoBotao">ENTRAR</button>
      </form>
    </div>
  </div>
</div>

</body>
</html>