<%-- 
    Document   : RegistrarVenta
    Created on : 13 may. 2023, 22:32:06
    Author     : Yohana Avila
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <title>Ventas</title>
        <style>
            @media print{
                .parte01 , .btn , .accion {
                    display: none;
                }
            }
        </style>
    </head>
    <body>
        <div class="d-flex">
            <div style="margin: 15px;" class="card d-block col-sm-4 parte01">
                <div class="card parte01">
                    <form action="Controlador?menu=NuevaVenta" method="POST">
                        <div class="card-body">
                            <div class="form-group ">
                                <label>Datos del Cliente</label>
                            </div>
                            <div class="form-group">
                                <div style="margin: 5px;" class="col-sm-6 d-flex">
                                    <input style="margin: 1px; width: 105px" size="40" type="text" name="codigocliente" value="${c.getDni()}" class="form-control  " placeholder="Codigo">
                                    <input style="margin-left: 5px;" type="submit" name="accion" value="BuscarCliente" class="btn btn-secondary">
                                </div> 
                                <div style="margin: 5px;">
                                    <input type="text" name="nombrescliente"  value="${c.getNom()}" class="form-control" placeholder="Datos Cliente" readonly>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Datos Producto</label>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-6 d-flex">
                                    <input style="margin: 5px;" type="text" name="codigoproducto" value="${producto.getId()}" class="form-control" placeholder="Codigo">
                                    <button style="margin: 5px;" type="submit" name="accion" value="BuscarProducto" class="btn btn-secondary">Buscar</button>
                                </div>
                                <div style="margin: 5px;">
                                    <input type="text" name="nomproducto" value="${producto.getNom()}" class="form-control" placeholder="Datos Producto" readonly>
                                </div>
                            </div>
                            <div style="margin: 5px;" class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input style="margin: 1px;" type="text" name="precio" value="${producto.getPrecio()}" class="form-control" placeholder="S/.0.00" readonly>
                                </div>
                                <div class="col-sm-3">
                                    <input style="margin: 1px;" type="number" name="cant" value="1" placeholder="" class="form-control">
                                </div>
                                <div class="col-sm-3">
                                    <input style="margin: 1px;" type="text" name="stock" value="${producto.getStock()}" placeholder="Stock" class="form-control" readonly>
                                </div>
                            </div>
                            <div class="form-group d-flex justify-content-between"><br><br>
                                <button type="submit" name="accion" value="Agregar" class="btn btn-primary" style="margin-left: auto; margin-right: auto;" > Agregar Producto</button>
                                <button type="submit" name="accion" value="Actualizar" class="btn btn-success" style="margin-left: auto; margin-right: auto;" >Actualizar</button>
                                
                            </div>  
                        </div>
                    </form>
                </div>
            </div>
            
            <div style="margin: 15px; border: none;" class="col-sm-7 parte02">
                <div  style="border:  none;" class="card">
                    <div class="card-body">
                        <div class="d-flex col-sm-7 ml-auto">
                            <label style="margin: 15px;" >NumeroSerie: </label>
                            <input type="text" name="NroSerie" value="${nserie}" class="form-control" readonly>
                        </div> <br>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Nro</th>
                                    <th>Codigo</th>
                                    <th>Descripcion</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>Subtotal</th>
                                    <th class="accion">Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="list" items="${lista}">
                                <tr>
                                    <td id="Item">${list.getItem()}</td>
                                    <td>${list.getIdproducto()}</td> 
                                    <td>${list.getDescripcionP()}</td> 
                                    <td>${list.getPrecio()}</td>
                                    <td>${list.getCantidad()}</td> 
                                    <td>${list.getSubtotal()}</td> 
                                    <td class="accion d-flex">
                                        <a href="Controlador?menu=NuevaVenta&accion=Editar&Item=${list.getItem()}&idp=${list.getIdproducto()}" class="btn btn-warning" style="margin-left: auto; margin-right: auto;">Editar</a>
                                        <a href="Controlador?menu=NuevaVenta&accion=Delete&Item=${list.getItem()}" class="btn btn-danger" style="margin-left: auto; margin-right: auto;">Delete</a>
                                    </td> 
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer d-flex">
                        <div class="col-sm-6"><!-- comment -->
                            <a href="Controlador?menu=NuevaVenta&accion=GenerarVenta" onclick="print()" class="btn btn-success" >Generar Venta</a>
                            <input type="submit" name="accion" value="Cancelar" class="btn btn-danger">
                        </div>
                        <div class="col-sm-4 ml-auto">
                            <input type="text" name="txtTotal" value="S/. ${totalPagar}0" class="col-lg-4 form-control">
                        </div>
                    </div>
                </div>
                
                
            </div>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/1Furfhe8BFbkEhXn1xcYPr8jYAACNpfV7p" crossorigin="anonymous"></script>

    </body>
</html>