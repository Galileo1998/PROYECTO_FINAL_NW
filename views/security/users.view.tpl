<link rel="stylesheet" href="newstyle.css" />
<h1 class="titulo">
  Gestión de Usuarios
</h1>
<div class="conte">
<div class="row depth-1 m-padding ">
  <form action="index.php?page=users" method="post" class="col-md-8 col-offset-2">
      <div class="row s-padding">
        <center>
        <label class="col-md-1" for="fltEmail" style="font-size:1.3em;
        font-weight:bold; font-family:sans-serif; margin-right:10px;" >Correo:&nbsp;</label>
        <input type="email" name="fltEmail"  class="col-md-8" style="
        outline: none;
        height: 25px;
        border-radius: 10px;
        height: 25px;
        width: 40%;
        font-size: 1em;
        border: solid 2.5px #3b6c6b;
        text-align:center;
        margin-right:10px;"
              id="fltEmail" placeholder="correo@electron.ico" value="{{fltEmail}}" />
        <button class="col-md-3" id="btnFiltro" style="
        width:100px; font-size:10px;
        height: 30px; font-weight:bold; font-family:sans-serif;
        border:none; color:white;
        border-radius:10px; background-color:#3b6c6b;"><span class="ion-refresh">&nbsp;Actualizar</span></button>
      </div>
    </center>
  </form>
</div>

<div class="row depth-1">
  <center>
  <table class="col-md-12" style="margin:auto; width:100%;
  text-align:center;
  border-collapse:collapse;
  margin-top:50px;">
    <thead>
      <tr style="background-color: rgba(0,0,0,.8); color:white;">
        <th>Correo</th>
        <th>Nombre</th>
        <th class="sd-hide">Tipo</th>
        <th class="sd-hide">Estado</th>
        <th>
          {{if canNew}}
          <a href="index.php?page=user&usrcod=0&mode=INS" class="btn depth-1 s-margin" style="text-decoration:none;">
          <span style="color:white;">AGREGAR</span>
          </a>
          {{endif canNew}}
        </th>
      </tr>
    </thead>
    <tbody class="zebra">
      {{foreach usuarios}}
      <tr class="zebra">
        <td>{{useremail}}</td>
        <td>{{username}}</td>
        <td class="sd-hide">{{usertipo}}</td>
        <td class="sd-hide">{{userest}}</td>
        <td class="center">
          {{if ~canEdit}}
          <a href="index.php?page=user&usrcod={{usercod}}&mode=UPD" class="btn depth-1 s-margin"><span class="ion-edit"></span></a>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          {{endif ~canEdit}}
          <a href="index.php?page=user&usrcod={{usercod}}&mode=DSP" class="btn depth-1 s-margin"><span class="ion-eye"></span></a>
        </td>
      </tr>
      {{endfor usuarios}}
    </tbody>
  </table>
</div>
</center>
</div>


<script>
    $().ready(
    function(){
      $("#btnFiltro").click(
        function(e){
          e.preventDefault();
          e.stopPropagation();
          document.forms[0].submit();
        }
      );
    }

    );
</script>
