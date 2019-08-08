<link rel="stylesheet" href="newstyle.css" />
<section>
  <header>
    <h1 class="titulo">Gestión de Donaciones</h1>
  </header>
  <main>
    <div class="conte">
      <center>
    <table class="full-width" style="margin:auto; width:100%;
    text-align:center;
    border-collapse:collapse;
    margin-top:50px;">
      <thead>
        <tr style="background-color: rgba(0,0,0,.8); color:white;">
          <th>Cod</th>
          <th>Descripción</th>
          <th>Tiempo</th>
          <th>Pago</th>
          <th class="right">
            <form action="index.php?page=Admin_donacion" method="post">
            <input type="hidden" name="iddonacion" value="" />
            <input type="hidden" name="xcfrt" value="{{~xcfrt}}" />
            <button type="submit" name="btnIns">Agregar</button>
          </form>
          </th>
        </tr>
      </thead>
      <tbody class="zebra">
        {{foreach mantenimiento_donaciones}}
        <tr>
          <td>{{iddonaciones}}</td>
          <td>{{descripcion_donacion}}</td>
          <td>{{tiempo}}</td>
          <td>{{pago}}</td>
          <td class="right">
            <form action="index.php?page=Admin_donacion" method="post">
              <input type="hidden" name="iddonacion" value="{{iddonaciones}}"/>
              <input type="hidden" name="xcfrt" value="{{~xcfrt}}" />
              <button type="submit" name="btnDsp">Ver</button>
              <button type="submit" name="btnUpd">Editar</button>
              <button type="submit" name="btnDel">Eliminar</button>
            </form>
          </td>
        </tr>
        {{endfor mantenimiento_donaciones}}
      </tbody>
      <tfoot>
        <tr>
          <td colspan="6"></td>
        </tr>
      </tfoot>
    </table>
  </center>
  </div>
  </main>
</section>
