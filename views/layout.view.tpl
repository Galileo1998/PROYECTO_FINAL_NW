<!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8" />
            <title>{{page_title}}</title>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
            <link rel="stylesheet" href="public/css/newstyle.css" />
            <script src="public/js/jquery.min.js"></script>
            {{foreach css_ref}}
                <link rel="stylesheet" href="{{uri}}" />
            {{endfor css_ref}}
        </head>
        <body>
            <div style="
            width: 100%;
            position:fixed;
            top: 0px;
            left: 0px;
            text-align: center;
            background-color: #3b6c6b;
            list-style: none;
            z-index: 9999;
            ">
              <ul class="lis">
                  <li class="lista"><a href="index.php?" class="letr">Inicio</a></li>
                  <li class="lista"><a href="index.php?page=Nosotros" class="letr">Nosotros</a></li>
                  <li class="lista"><a href="index.php?" class="letr">Recomendaciones</a></li>
                  <div class="log"></div>
                  <li class="lista1"><a href="index.php?page=login" class="letr">Iniciar Sesión</a></li>
                  <li class="lista1"><a href="index.php?" class="letr">Galeria</a></li>
                  <li class="lista1"><a href="index.php?page=donaciones" class="letr">Donaciones</a></li>

              </ul>
              <div class="hbtn"> <div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div></div>
          </div>

            <div class="contenido">
                {{{page_content}}}
            </div>

            <div class="footer">
                Derechos Reservados por UNICAH SCJ|SRL ICC NW 2019
            </div>
            {{foreach js_ref}}
                <script src="{{uri}}"></script>
            {{endfor js_ref}}
            <script>
              $().ready(function(e){
                $(".hbtn").click(function(e){
                  e.preventDefault();
                  e.stopPropagation();
                  $(".menu").toggleClass('open');
                  });
              });
            </script>
        </body>
    </html>
