<link rel="stylesheet" href="view.css" />
<h1 class="titulo">
  Gestión de Roles
</h1>
<div class="conte">
<center>
<div class="row depth-1 m-padding">
  <form action="index.php?page=roles" method="post" class="col-md-8 col-offset-2">
      <div class="row s-padding">
        <label class="col-md-1" for="fltDsc" style="font-size:1.3em;
        font-weight:bold; font-family:sans-serif; margin-right:10px;">Roles:&nbsp;</label>
        <input type="text" name="fltDsc"  class="col-md-8"
              id="fltDsc" placeholder="Codigo de roles" value="{{fltDsc}}" style="
              outline: none;
              height: 25px;
              border-radius: 10px;
              height: 25px;
              width: 40%;
              font-size: 1em;
              border: solid 2.5px #3b6c6b;
              text-align:center;
              margin-right:10px;"/>
        <button style="
        width:100px; font-size:10px;
        height: 30px; font-weight:bold; font-family:sans-serif;
        border:none; color:white;
        border-radius:10px; background-color:#3b6c6b;" class="col-md-3" id="btnFiltro"><span class="ion-refresh">&nbsp;Actualizar</span></button>
      </div>
  </form>
</div>
<div class="row depth-1">
  <table class="col-md-12" style="margin:auto; width:100%;
  text-align:center;
  border-collapse:collapse;
  margin-top:50px;">
    <thead>
      <tr style="background-color: rgba(0,0,0,.8); color:white;">
        <th>Código</th>
        <th>Nombre</th>
        <th class="sd-hide">Estado</th>
        <th><a href="index.php?page=rol&rolescod&mode=INS" class="btn depth-1 s-margin" style="text-decoration:none; color:white;">
          <span >AGREGAR</span>
          </a></th>
      </tr>
    </thead>
    <tbody class="zebra">
      {{foreach roles}}
      <tr>
        <td>{{rolescod}}</td>
        <td>{{rolesdsc}}</td>
        <td class="sd-hide">{{rolesest}}</td>
        <td class="center">
          <a href="index.php?page=rol&rolescod={{rolescod}}&mode=UPD" class="btn depth-1 s-margin"><span class="ion-edit"></span></a>
          <a href="index.php?page=rol&rolescod={{rolescod}}&mode=DSP" class="btn depth-1 s-margin"><span class="ion-eye"></span></a>
        </td>
      </tr>
      {{endfor roles}}
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
