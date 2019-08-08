
<section class="row">
  <div  id="boxLogin">
  <form id="formLogin" action="index.php?page=login" method="POST" class="col-m-6 col-offset-3 card">
    <h1 >Inicio de Sesión</h1>
    <input name="returnto" value="{{returnto}}" type="hidden" />
    <input name="tocken" value="{{tocken}}" type="hidden"/>
    <div class="row">
      <label class="col-m-5" for="txtEmail" >Correo Electrónico</label>
      <input class="col-m-7 text1" type="text" name="txtEmail" id="txtEmail" value="{{txtEmail}}"  />
    </div>
    <div class="row">
      <label class="col-m-5" for="txtPswd">Contraseña</label>
      <input class="col-m-7 text2" type="password" name="txtPswd" id="txtPswd" value=""  />
    </div><br/>
    <div class="row">
      <button class="col-m-10 btn-primary" id="btnSend"><span class="ion-log-in"></span>&nbsp;Iniciar Sesión</button>
    </div>
    {{if showerrors}}
        <div class="alert alert-danger">
          <ul style="margin-bottom:1em !important;">
            {{foreach errors}}
              <li>
                {{this}}
              </li>
            {{endfor errors}}
          </ul>
        </div>
    {{endif showerrors}}
  </form>
  </div>
</section>
<script>
  $().ready(
    function(){
      $("#btnSend").click(function(e){
          e.preventDefault();
          e.stopPropagation();
          $("#formLogin").submit();
        });
    }
    );
</script>
