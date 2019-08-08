<section class="conteiner">
  <div class="col-m-10 col-offset-1" id="boxDonador">


  <h1>Pago con PayPal</h1>
  <section class="row">
    <section class="col-m-8 col-offset-2">
      <form action="index.php?page=checkout" method="post">
        <fieldset class="row ">
            <div class="col-m-8"><b>Descripción </b>
            </div><input class="col-m-6 " value="{{concepto}}" name="name" type="text"/>

            <div class="col-m-4 right"><b>Tiempo </b>
            </div><input class="col-m-6 " value="{{time}}" name="time" type="text"/>

            <div class="col-m-4 right"><b>Precio </b>
            </div><input class="col-m-6 " value="{{precio}}" name="price" type="text"/>

        </fieldset>



        <fieldset class="row">
          <div class="row">
          <label class="col-m-4">Nombre completo: &nbsp;&nbsp;&nbsp;</label>
            <input style="margin-left:1.7vw;"class="col-m-6" type="text" name="txtNombre" required/>
          </div>
          <div class="row">
            <div class="col-m-1"></div>
            <label class="col-m-4">Número de Identidad: &nbsp;&nbsp;&nbsp;</label>
            <input class="col-m-6" type="text" name="txtIdentidad" required/>
          </div>
          <div class="row">
            <div class="col-m-1"></div>
            <label class="col-m-4">Télefono móvil: &nbsp;&nbsp;&nbsp;</label>
            <input class="col-m-6"  style="margin-left:2.5vw;"type="text" name="txtPhone" required/>
          </div>
          <div class="row">
            <div class="col-m-1"></div>
            <label class="col-m-4">Correo electrónico: &nbsp;&nbsp;&nbsp;</label>
            <input class="col-m-6" type="mail" name="txtMail" required/>
          </div>
          <div class="row">
            <div class="col-m-1"></div>
            <label class="col-m-4">Número de tarjeta: &nbsp;&nbsp;&nbsp;</label>
            <input class="col-m-1" type="text" name="txtMes" placeholder="Mes" required/>&nbsp;
            <input class="col-m-1" type="text" name="txtAnno" placeholder="Año" required/>&nbsp;
            <input class="col-m-3" type="text" name="txtNumero"  placeholder="Tarjeta" required/>&nbsp;
            <input class="col-m-1" type="text" name="txtCVC" placeholder="CVC" required>
          </div>
        </fieldset>
        <fieldset class="row right">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <button type="submit" class="btn-primary l-padding" name="btnSubmit" value="submit">
            Pagar
          </button>
        </fieldset>
      </form>
    </section>
  </section>
    </div>
</section>
