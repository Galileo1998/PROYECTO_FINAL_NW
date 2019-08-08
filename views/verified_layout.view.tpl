<!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8" />
            <title>{{page_title}}</title>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <link rel="stylesheet" href="//code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
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
                {{if notifnum}}
                <li class="lista2"><a href="index.php?page=notificacion" class="letr">
                  <span class="ion-android-notifications">&nbsp;{{notifnum}}</span></a>
                </li>
                {{endif notifnum}}
                <li class="lista2"><a href="index.php?page=logout" class="letr">Cerrar Sesión</a></li>
                {{foreach appmenu}}
                  <li class="lista2"><a href="index.php?page={{mdlprg}}" class="letr">{{mdldsc}}</a></li>
                {{endfor appmenu}}

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
