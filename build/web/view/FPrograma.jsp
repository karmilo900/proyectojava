
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="Fstile.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programa</title>
    </head>
    <body>
        <h1>Registro de Programas</h1>
        <div class="col-lg-6">
            <form action="../ControladoPrograma">
                Codigo de Programa:<br><!-- comment -->
                <input class="form-control" type="number" name="txtcodpro"><br>
                Nombre del Programa:<br>
                <input class="form-control" type="text" name="txtnombrepro">
                <input class="btn btn-danger" type="submit" name="accion" value="AgregarPro">
            </form> 
        </div>
    </body>
</html>
