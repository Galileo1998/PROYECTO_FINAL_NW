<link rel="stylesheet" href="newstyle.css" />
<h1 class="titulo">Gestión de Usuario</h1>
<div class="row depth-1 m-padding">
  <h2 class="titulo2">{{modeDesc}}</h2>
</div>
<div class="conte">

<div class="row depth-1 m-padding">
  {{if haserrores}}
    <ul class="alert alert-danger depth-1 m-padding" style="list-style:none;">
      {{foreach errores}}
        <li>
          {{this}}
        </li>
      {{endfor errores}}
    </ul>
  {{endif haserrores}}
  <form action="index.php?page=user" method="post" class="col-sm-8 col-sm-offset-2 col-md-6 col-offset-3">
    <input type="hidden" name="mode" value="{{mode}}"  />
    <input type="hidden" name="tocken" value="{{tocken}}"  />
    <input type="hidden" name="usrcod" value="{{usrcod}}"  />
    <div class="row">
    <div class="row s-padding">
      <label class="col-sm-5" style="font-size:1.3em; margin-right:10px;float:left;
      margin-left: 30%; margin-top:50px; font-weight:bold; font-family:sans-serif; margin-right:10px;">Correo Electrónico</label>
      <input style="
      outline: none;
      height: 25px;
      border-radius: 10px;
      height: 25px;
      width: 40%;
      font-size: 1em;
      border: solid 2.5px #3b6c6b;
      text-align:center;
      margin-right:10px; margin-bottom: 20px; margin-top:50px;" class="col-sm-7" {{readonly}} type="text" name="txtCorreo" id="txtCorreo" value="{{useremail}}" placeholder="correo@electron.ico" />
    </div>
    <div class="row s-padding">
      <label class="col-sm-5" style="font-size:1.3em;margin-right:10px;float:left;
      margin-left: 30%;
      font-weight:bold; font-family:sans-serif; margin-right:10px;">Nombre Completo</label>
      <input style="
      outline: none;
      height: 25px;
      border-radius: 10px;
      height: 25px;
      width: 40%;
      font-size: 1em;
      border: solid 2.5px #3b6c6b;
      text-align:center;
      margin-right:10px;
      margin-bottom: 20px;" class="col-sm-7" {{readonly}} type="text" name="txtName" id="txtName" value="{{username}}" placeholder="Nombre Completo" />
    </div>
    <div class="row s-padding">
      <label class="col-sm-5" style="font-size:1.3em; margin-right:10px;float:left;
      margin-left: 30%;
      font-weight:bold; font-family:sans-serif; margin-right:10px;">Tipo de Usuario</label>
        <span  class="select col-sm-7"><select style="
        outline: none;
        height: 25px;
        border-radius: 10px;
        height: 25px;
        width: 40%;
        font-size: 1em;
        border: solid 2.5px #3b6c6b;
        text-align:center;
        margin-right:10px; margin-bottom: 20px;" {{if readonly}}disabled readonly="readonly" {{endif readonly}} class="col-md-12" id="cmbTipo" name="cmbTipo">
          {{foreach tipoUsuarios}}
            <option value="{{codigo}}" {{selected}}>{{valor}}</option>
          {{endfor tipoUsuarios}}
      </select></span>
    </div>
    <div class="row s-padding">
      <label class="col-sm-5" style="font-size:1.3em; margin-right:10px;float:left;
      margin-left: 30%;
      font-weight:bold; font-family:sans-serif; margin-right:10px;">Estado</label>
      <span class="select col-sm-7"><select style="
      outline: none;
      height: 25px;
      border-radius: 10px;
      height: 25px;
      width: 40%;
      font-size: 1em;
      border: solid 2.5px #3b6c6b;
      text-align:center;
      margin-right:10px; margin-bottom: 20px;" {{if readonly}}disabled readonly="readonly" {{endif readonly}} class="col-md-12" id="cmbEstado" name="cmbEstado">
        {{foreach estadoUsuarios}}
          <option value="{{codigo}}" {{selected}}>{{valor}}</option>
        {{endfor estadoUsuarios}}
      </select> </span>
    </div>
    {{ifnot readonly}}
    <div class="row s-padding">
      <label class="col-sm-5" style="font-size:1.3em; margin-right:10px;float:left;
      margin-left: 10%;
      font-weight:bold; font-family:sans-serif; margin-right:10px;float:left;
      margin-left: 30%;">Contraseña</label>
      <input style="
      outline: none;
      height: 25px;
      border-radius: 10px;
      height: 25px;
      width: 40%;
      font-size: 1em;
      border: solid 2.5px #3b6c6b;
      text-align:center;
      margin-right:10px;" class="col-sm-7" {{readonly}} type="password" name="txtPswd" id="txtPswd" value="" placeholder="Contraseña" />

    </div>
    {{endifnot readonly}}
    <div class="row s-padding">
      <center>
      <div class="col-md-12 right">
        {{ifnot readonly}}
        <button style=" margin-top: 50px; margin-right: 20px;
        width:100px; font-size:10px;
        height: 30px; font-weight:bold; font-family:sans-serif;
        border:none; color:white;
        border-radius:10px; background-color:#3b6c6b;" id="btnConfirm"><span class="icon "></span>Confirmar</button>
        {{endifnot readonly}}
        <button style="margin-top: 50px; margin-right: 20px;
        width:100px; font-size:10px;
        height: 30px; font-weight:bold; font-family:sans-serif;
        border:none; color:white;
        border-radius:10px; background-color:#3b6c6b;" id="btnCancel">Cancelar</button>
      </div></center>
    </div>
    </div>
  </form>
</div>
</div>
{{ifnot isinsert}}
<div class="row depth-1 m-padding">
  <h2></h2>
</div>
<!--
<div class="row depth-1 m-padding">
  <table class="col-sm-8 col-sm-offset-2 col-md-6 col-offset-3">
    <thead>

      <tr>
          <th colspan="3">
            <form action="index.php?page=user" method="post"  id="frmAddRol">
            {{ifnot readonly}}
              <span class="select col-sm-10">
                <select name="rolescod" class="col-sm-12">
                  {{foreach rolesavailable}}
                    <option value="{{rolescod}}">{{rolesdsc}}</option>
                  {{endfor rolesavailable}}
                </select>
              </span>
              <input type="hidden" name="usrcod" value="{{usercod}}"  />
              <input type="hidden" name="btnAddRol" value="AddRol"  />
              <input type="hidden" name="mode" value="{{mode}}"  />
              <input type="hidden" name="tocken" value="{{tocken}}"  />
            {{endifnot readonly}}
            {{if readonly}}

            {{endif readonly}}
            {{ifnot readonly}}
            <span class="col-sm-2 right">
            <a href id="btnAddRol" class="btn depth-1 s-margin">
              <span class="ion-plus-circled"></span>
            </a>
            </span>
            {{endifnot readonly}}
            {{if readonly}}
            &nbsp;
            {{endif readonly}}
            </form>
          </th>
      </tr>

    </thead>
    <tbody>
      {{foreach rolesassign}}
      <tr>
        <td>
          {{rolescod}}
        </td>
        <td>
           {{rolesdsc}}
        </td>
        <td class="right">
          {{ifnot readonly}}
          <form action="index.php?page=user" method="post">
            <input type="hidden" name="usrcod" value="{{usercod}}"  />
            <input type="hidden" name="rolescod" value="{{rolescod}}"  />
            <input type="hidden" name="mode" value="{{mode}}"  />
            <input type="hidden" name="tocken" value="{{tocken}}"  />
            <input type="hidden" name="btnDelRol" value="DelRol"  />
            <a href id="btnDelRol" class="btn depth-1 s-margin">
              <span class="ion-minus-circled"></span>
            </a>
          </form>
          {{endifnot readonly}}
          {{if readonly}}
            &nbsp;
          {{endif readonly}}
        </td>
      </tr>
      {{endfor rolesassign}}
    </tbody>
  </table>
</div>
{{endifnot isinsert}}-->
<script>
  $().ready(function(){
      $("#btnConfirm").click(function(e){
        e.preventDefault();
        e.stopPropagation();
        document.forms[0].submit();
        });
      $("#btnCancel").click(function(e){
          e.preventDefault();
          e.stopPropagation();
          window.location.assign("index.php?page=users");
          });
      {{ifnot isinsert}}
      $("#btnAddRol").click(function(e){
          e.preventDefault();
          e.stopPropagation();
          $("#frmAddRol").submit();
        });
      $("#btnDelRol").click(function(e){
          e.preventDefault();
          e.stopPropagation();
          $(this).parent("form").submit();
        });

      {{endifnot isinsert}}
    });
</script>
