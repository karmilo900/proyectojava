<%-- 
    Document   : FLibros
    Created on : 15/05/2023, 6:34:08 p. m.
    Author     : APRENDIZ
--%>
<%@page import="Model.Aprendiz"%>
<%@page import="Model.Programa"%>
<%@page import="java.util.List"%>
<%@page import="ModelDao.ProgramaDao"%>
<%@page import="ModelDao.AprendizDao"%>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <h1>Formulario de Ficha</h1>
    
    <form action="../ControladorFicha">
    
        <div class="contenedor">
            
            <label for="codficha">Código de Ficha</label><br>
            <input class="form-control" type="number" id="codficha" name="txtCodFicha"><br>
        </div>
            <label for="cantap">Cantidad Aprendices</label><br>
            <input class="form-control"type="number" id="cantap" name="txtCantAp">
            <div class="form-control">
                <label Nombre Programa:>Nombre de Programa</label>
                <br>
                <select name="txtCodPro" id="codpro">
                <option value="">Seleccione un programa</option>
                <%ProgramaDao pro = new ProgramaDao();
                List<Programa>lista = pro.listadopro();
                     
                %>
                <% 
                for(Programa li:lista){%>
                <option value="<%=li.getCodprograma()%>"><%=li.getNombreprograma()%></option>
                <%}%>
            </select> 
                
            </div>
            
            
            <div class="form-control">
                <label Nombre aprendiz>Nombre Aprendiz</label>
                <br>
                <select name="txtCodAp" id="codap">
                <option value="">Seleccione un Aprendiz</option>
                <%AprendizDao adao = new AprendizDao();
                List<Aprendiz>list = adao.listadoA();
                %>
                <% 
                for(Aprendiz li:list){%>
                <option value="<%=li.getId()%>"><%=li.getNombre()%><%=li.getDocuApre()%></option>
                <%}%>
            </select>    
            </div>
            <input class="btn btn-primary" type="submit" name="accion" value="Agregarfi">
            
    </form>  
        
    
</body