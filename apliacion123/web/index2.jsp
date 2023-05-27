<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="utf-8">
  <link href="view/style.css" rel="stylesheet" type="text/css"/>
  <title>Registro de usuario</title>

</head>
<body>

  <div id="contenedor">
    <div id="datos">
      <h1>Registro de aprendiz</h1>
      <form action="ControladorAprendiz">
          
        <label for="documento">Documento</label>
        <input id="documento" type="number" name="txtDoc">

        <label for="apellidos">Apellido</label>
        <input id="apellidos" type="text" name="txtApe">

        <label for="nombre">Nombre</label>
        <input id="nombre" type="text" name="txtNom">

        <label for="correo">Correo electrónico</label>
        <input id="correo"  type="email" name="txtEmail">

        <label for="nContact">Número de contacto</label>
        <input id="nContact" type="number" name="txtTel">

        <button id="enviar">Enviar</button>
        <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
      </form>
    </div>
  </div>
</body>
</html>