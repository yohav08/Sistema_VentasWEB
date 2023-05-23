<%-- 
    Document   : Producto
    Created on : 13 may. 2023, 22:30:57
    Author     : Yohana Avila
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Producto</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
        <div class="d-flex">
            <div style="margin: 15px;" class="card d-block col-sm-4">
                <div class="card-body">
                    <form class="" action="Controlador?menu=Producto" method="POST">
                        <div class="form-group">
                            <label>Nombres</label>
                            <input type="text" value="${producto.getNom()}" name="txtNombres" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Precio</label>
                            <input type="text" value="${producto.getPrecio()}" name="txtPrecio" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Stock</label>
                            <input type="text" value="${producto.getStock()}" name="txtStock" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Estado</label>
                            <input type="text" value="${producto.getEstado()}" name="txtEstado" class="form-control">
                        </div><br>
                        <div class="d-flex justify-content-between">
                            <input style="margin-left: auto; margin-right: auto;" type="submit" name="accion" value="Agregar" class="col-sm-4 btn btn-primary">
                            <input style="margin-left: auto; margin-right: auto;" type="submit" name="accion" value="Actualizar" class=" col-sm-4 btn btn-success">
                        </div>
                    </form>
                </div>
            </div>
            <div style="margin: 15px;" class="d-block col-sm-7">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>NOMBRES</th>
                            <th>PRECIO</th>
                            <th>STOCK</th>
                            <th>ESTADO</th>
                            <th>ACCIONES</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="p" items="${productos}" >
                            <tr>
                                <td>${p.getId()}</td>
                                <td>${p.getNom()}</td>
                                <td>${p.getPrecio()}</td>
                                <td>${p.getStock()}</td>
                                <td>${p.getEstado()}</td>
                                <td> 
                                    <a class="btn btn-warning" href="Controlador?menu=Producto&accion=Editar&id=${p.getId()}">Editar</a>
                                    <a class="btn btn-danger" href="Controlador?menu=Producto&accion=Delete&id=${p.getId()}">Delete</a>
                                </td>
                             </tr>
                        </c:forEach>

                    </tbody>
                </table>
            </div>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/1Furfhe8BFbkEhXn1xcYPr8jYAACNpfV7p" crossorigin="anonymous"></script>

    </body>
</html>
