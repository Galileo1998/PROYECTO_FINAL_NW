<section class="conteiner">
  <header>
    <h1 >¿Cómo desea ayudar con esta obra?</h1>
  </header>
  <main>
    {{if hasErrors}}
      <form action="index.php?page=donaciones" method="post">
        <h2>Mi carrito</h2>
        <label>Descripción: {{valorDesc}}</label>&nbsp;&nbsp;&nbsp;&nbsp;
        <label>Tiempo: {{valorTiempo}}</label>&nbsp;&nbsp;&nbsp;&nbsp;
        <label>Precio: {{valorPrecio}}</label>&nbsp;&nbsp;&nbsp;&nbsp;
        <button type="submit" name="btnEliminar" >Eliminar</button>&nbsp;&nbsp;&nbsp;&nbsp;
        <button>Pagar</button>
      </form>
    {{endif hasErrors}}
    <section class="row" style="
      box-sizing:border-box;
      display:flex;
      justify-content: space-around;
      flex-wrap:wrap;
      align-items: flex-start;
      padding:1em;
      width:95vw;
      min-height:40vh;
      opacity: 0.90;
    ">
    <div class="">
      {{foreach donaciones}}
            <fieldset style="
              display:block;
              box-sizing:border-box;
              /*width:calc((90vw - 2em) / 3);*/
              width: 20vw;
              padding:0.5em;
              /*margin: calc(10vw / 6);*/
              margin: auto;
              margin-top: 5px;
              /*box-shadow: 3px 3px 3px #000;*/
              border: 0.7px solid #009b97;
              border-radius: 15px;
              background-color: rgba(255,255,255,0.6);
              border-width: 2.5px;

            ">
              <form action ="index.php?page=checkout" method="post" id="cardDonar">
                <center>
                  <h2>{{descripcion_donacion}}</h2>
                  <input type="hidden" value="{{iddonaciones}}" name="id"/>
                  <input type="hidden" value="{{descripcion_donacion}}" name="valorDesc"/>
                  <input type="hidden" value="{{tiempo}}" name="valorTiempo"/>
                  <input type="hidden" value="{{pago}}" name="valorPago"/>
                  <label value="{{tiempo}}" name="time">Forma de donación: {{tiempo}}</label>
                  <br/>
                  <label value="{{pago}}" name="price">Cantidad a donar: {{pago}}</label>
                  <br/>
                  <button type="submit" id="btnCarrito" name="btnCarrito"
                  style="
                  font-weight: bold;
                  color:white;">Donar</button>
                </center>
              </form>
             </fieldset>
             <br/>
      {{endfor donaciones}}
      </div>
    </section>
  </main>
</section>
