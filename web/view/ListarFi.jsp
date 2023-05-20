<%-- 
    Document   : ListarFi
    Created on : 19/05/2023, 9:12:56 p. m.
    Author     : APRENDIZ
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Model.Ficha"%>
<%@page import="java.util.List"%>
<%@page import="ModelDao.FichaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <div class="container">
            <h2>Fichas REGISTRADAS EN EL SISTEMA</h2>
            <table class="table table-responsive">
                <thead>
                    <tr>
                        <th class="text-center">cantaprendices</th>
                        <th class="text-center">codficha</th>
                        <th class="text-center">codaprendiz</th>
                        <th class="text-center">codprograma</th>
                        
                    </tr>
                </thead>
                <%
                    FichaDao daop = new FichaDao();
                    List<Ficha>listar=daop.listaFichas();
                    Iterator<Ficha>it=listar.iterator();
                    Ficha fich= null;
                    while(it.hasNext()){
                    fich=it.next();
                    
                    
                    %>
                    <tbody>
                        <tr>
                            <td class="text-center"><%=fich.getCantiAprendices()%></td>
                            <td class="text-center"><%=fich.getCodFicha()%></td>
                            <td class="text-center"><%=fich.getCodaprendiz()%></td>
                            <td class="text-center"><%=fich.getCodprograma()%></td>


                            <td class="text-center">
                                <a class="btn btn-danger" href="../ControladoPrograma?accion=editar&codprograma=<%=fich.getCodFicha()%>">EDITAR</a>
                                <a class="btn btn-warning" href="../ControladoPrograma?accion=eliminar&codprograma=<%=fich.getCodFicha()%>">ELIMINAR</a>

                            </td>
                        </tr>
                        <% } %>
                    </tbody>
            </table>
            
        </div>
    </body>
</html>
