<%-- 
    Document   : Principal
    Created on : 7 abr. 2023, 17:35:11
    Author     : Yohana Avila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
                            
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none"  class="btn-lg nav-link active" href="#">Home</a>
                    </li>                    
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none"  class="btn-lg btn btn-outline-light" href="Controlador?menu=Producto" target="myFrame">Producto</a>
                    </li>
                    <li  class="nav-item">
                        <a style="margin-left: 10px; border: none" class="btn-lg btn btn-outline-light" href="Controlador?menu=Empleado&accion=Listar" target="myFrame">Empleado</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none" class="btn-lg btn btn-outline-light" href="Controlador?menu=Cliente" target="myFrame">Cliente</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none" class="btn-lg btn btn-outline-light" href="Controlador?menu=NuevaVenta" target="myFrame">Nueva Venta</a>
                    </li>
                </ul>
                
                <div class="dropdown">
                    <button style="border: none" class="btn-lg btn btn-outline-light dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        ${usuario.getNom()}
                    </button>
                    <ul class="dropdown-menu text-center">
                        <li><a class="dropdown-item" href="#"> <img src="img/user.png" alt="60" width="60"/> </a></li>
                        <li><a class="dropdown-item" href="#">${usuario.getNom()}</a></li>
                        <li><a class="dropdown-item" href="#">usuario@gmail.com</a></li>
                        <div class="dropdown-divider"></div>
                        <form action="Validar" method="POST">
                            <button id="accion" value="Salir" class="dropdown-item" href="#">Salir</button>
                        </form>
                    </ul>
                </div> 
            </div>
        </nav>
        
        <div class="m-2"style="height: 550px">
            <iframe name="myFrame" style="height: 100%; width: 100%; border: none"></iframe>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/1Furfhe8BFbkEhXn1xcYPr8jYAACNpfV7p" crossorigin="anonymous"></script>

    </body>
</html>
