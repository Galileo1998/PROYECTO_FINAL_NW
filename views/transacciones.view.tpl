<link rel="stylesheet" href="newstyle.css" />
<section>
  <header>
    <h1 class="titulo">Transacciones</h1>
  </header>
  <main>
    <div class="conte">
    <table class="full-width" class="col-md-12" style="margin:auto; width:100%;
    text-align:center;
    border-collapse:collapse;
    margin-top:50px;">
      <thead>
        <tr style="background-color: rgba(0,0,0,.8); color:white;">
          <th>Concepto</th>
          <th>Periodo</th>
          <th>Pago recibido</th>
          <th>Nombre del donante</th>
          <th>Teléfonp</th>
          <th>Correo</th>
          <th>Número de tarjeta</th>
          <th>Mes tarjeta</th>
          <th>Año tarjeta</th>
          <th>CVC</th>
          <th>Fecha de transacción</th>
        </tr>
      </thead>
      <tbody class="zebra">
        {{foreach transacciones}}
        <tr>
          <td>{{concepto}}</td>
          <td>{{tiempo}}</td>
          <td>{{pago}}</td>
          <td>{{nombre}}</td>
          <td>{{telefono}}</td>
          <td>{{correo}}</td>
          <td>{{numeroTarjeta}}</td>
          <td>{{mes}}</td>
          <td>{{anno}}</td>
          <td>{{cvc}}</td>
          <td>{{fecha}}</td>
        </tr>
        {{endfor transacciones}}
      </tbody>
      <tfoot>
        <tr>
          <td colspan="6"> Paginación</td>
        </tr>
      </tfoot>
    </table>
  </div">
  </main>
</section>
