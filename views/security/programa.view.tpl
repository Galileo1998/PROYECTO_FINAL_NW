<link rel="stylesheet" href="newstyle.css" />
<h1 class="titulo">Gestión de Función</h1>
<div class="row depth-1 m-padding">
  <h2 class="titulo2">{{modeDesc}}</h2>
</div>
<div class="row depth-1 m-padding">
  <div class="conte">
  {{if haserrores}}
    <ul class="alert alert-danger depth-1 m-padding" style="list-style:none;">
      {{foreach errores}}
        <li>
          {{this}}
        </li>
      {{endfor errores}}
    </ul>
  {{endif haserrores}}
  <form action="index.php?page=programa" method="post" class="col-sm-8 col-sm-offset-2 col-md-6 col-offset-3">
    <input type="hidden" name="mode" value="{{mode}}"  />
    <input type="hidden" name="tocken" value="{{tocken}}"  />
    <input type="hidden" name="programacod" value="{{fncod}}"  />
    <div class="row">
      <div class="row s-padding">
        <label class="col-sm-5"style="font-size:1.3em;margin-right:10px;float:left;
        margin-left: 30%;margin-top:50px;
        font-weight:bold; font-family:sans-serif;">Código del programa: </label>
        <input style="
        outline: none;
        height: 25px;
        border-radius: 10px;
        height: 25px;
        width: 40%;
        font-size: 1em;
        border: solid 2.5px #3b6c6b;
        text-align:center;
        margin-right:10px; margin-bottom: 20px; margin-top:50px;" class="col-sm-7" {{readonly}} type="text" name="txtCodigo" id="txtCodigo" value="{{fncod}}" placeholder="Código de la función" />
      </div>
    <div class="row s-padding">
      <label class="col-sm-5" style="font-size:1.3em;margin-right:10px;float:left;
      margin-left: 30%;
      font-weight:bold; font-family:sans-serif; margin-right:10px;">Descripción del programa: </label>
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
      margin-bottom: 20px;" class="col-sm-7" {{readonly}} type="text" name="txtDescripcion" id="txtDescripcion" value="{{fndsc}}" placeholder="Descripción de la función" />
    </div>
    <div class="row s-padding">
      <label class="col-sm-5" style="font-size:1.3em;margin-right:10px;float:left;
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
        {{foreach estadoProgramas}}
          <option value="{{codigo}}" {{selected}}>{{valor}}</option>
        {{endfor estadoProgramas}}
      </select> </span>
    </div>

    <div class="row s-padding">
      <label class="col-sm-5" style="font-size:1.3em;margin-right:10px;float:left;
      margin-left: 30%;
      font-weight:bold; font-family:sans-serif; margin-right:10px;">Tipo de Programa</label>
        <span class="select col-sm-7"><select style="
        outline: none;
        height: 25px;
        border-radius: 10px;
        height: 25px;
        width: 40%;
        font-size: 1em;
        border: solid 2.5px #3b6c6b;
        text-align:center;
        margin-right:10px; margin-bottom: 20px;" {{if readonly}}disabled readonly="readonly" {{endif readonly}} class="col-md-12" id="cmbTipo" name="cmbTipo">
          {{foreach tipoProgramas}}
            <option value="{{codigo}}" {{selected}}>{{valor}}</option>
          {{endfor tipoProgramas}}
      </select></span>
    </div>

    {{ifnot readonly}}
    {{endifnot readonly}}
    <div class="row s-padding">
      <center>
      <div class="col-md-12 right">
        {{ifnot readonly}}
        <button style=" margin-top: 50px; margin-right: 20px;
        width:100px; font-size:10px;
        height: 30px; font-weight:bold; font-family:sans-serif;
        border:none; color:white;
        border-radius:10px; background-color:#3b6c6b;" id="btnConfirm"><span class=""></span>Confirmar</button>
        {{endifnot readonly}}
        <button style=" margin-top: 50px; margin-right: 20px;
        width:100px; font-size:10px;
        height: 30px; font-weight:bold; font-family:sans-serif;
        border:none; color:white;
        border-radius:10px; background-color:#3b6c6b;" id="btnCancel">Cancelar</button>
      </div>
    </center>
    </div>
    </div>
  </form>
</div>
</div>
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
          window.location.assign("index.php?page=programas");
          });
    });
</script>
