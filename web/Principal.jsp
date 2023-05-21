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
        <title>Home</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        
        <script>
            window.addEventListener("load", (event) => {
                //Agregar Página de Bienvenida
                document.getElementById('text').innerHTML = '<header class="py-5"> <div class="container px-lg-5"><div class="p-4 p-lg-5 bg-light rounded-3 text-center"><div class="m-4 m-lg-5"><h1 class="display-5 fw-bold">¡Bienvenido al sistema de ventas!</h1><img src="img/logo.png" width="200"/> <br><p class="fs-4">Bienvenidos al sistema de ventas más innovador y eficiente del mercado.Nuestra misión es simplificar y potenciar las operaciones comerciales, brindando a nuestros clientes una experiencia única y satisfactoria en cada transacción. Nos proyectamos como la solución integral y líder en la gestión de ventas, con una visión de ser reconocidos como el referente en tecnología de ventas, ofreciendo una plataforma intuitiva y escalable que impulse el crecimiento y éxito de nuestros usuarios. Únase a nosotros y descubra una nueva forma de impulsar su negocio hacia el éxito.</p></div></div></div></header><section class="pt-4" ><div class="container px-lg-5"><div class="row gx-lg-5"><div class="col-lg-6 col-auto-4 mb-5"><div class="card bg-light border-0 h-100"><div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0"><div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4 py-3"><i><img src="./img/venta3.png" alt="70"/></i></div><h2 class="fs-4 fw-bold">Ventas Intuitivas</h2><p class="mb-0">Sistema fácil de usar y comprender para los usuarios para interactuar de manera natural y sin dificultades.</p></div></div></div><div class="col-lg-6 col-auto-4 mb-5"><div class="card bg-light border-0 h-100"><div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0"><div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4 py-3 px-3"><i><img src="./img/venta1.png" alt="70"/></i></div><h2 class="fs-4 fw-bold">Eficiencia</h2><p class="mb-0">Agilizando y ahorrando tiempo por medio de la gestión de inventario, seguimiento de clientes, etc.</p></div></div></div></div></div></section>';
                
                //ocultar Iframe
                document.getElementById("miframe").style.display = "none";
            });
            function Inicio() {
                //Agregar Página de Bienvenida
                document.getElementById('text').innerHTML = '<header class="py-5"> <div class="container px-lg-5"><div class="p-4 p-lg-5 bg-light rounded-3 text-center"><div class="m-4 m-lg-5"><h1 class="display-5 fw-bold">¡Bienvenido al sistema de ventas!</h1><img src="img/logo.png" width="200"/> <br><p class="fs-4">Bienvenidos al sistema de ventas más innovador y eficiente del mercado.Nuestra misión es simplificar y potenciar las operaciones comerciales, brindando a nuestros clientes una experiencia única y satisfactoria en cada transacción. Nos proyectamos como la solución integral y líder en la gestión de ventas, con una visión de ser reconocidos como el referente en tecnología de ventas, ofreciendo una plataforma intuitiva y escalable que impulse el crecimiento y éxito de nuestros usuarios. Únase a nosotros y descubra una nueva forma de impulsar su negocio hacia el éxito.</p></div></div></div></header><section class="pt-4" ><div class="container px-lg-5"><div class="row gx-lg-5"><div class="col-lg-6 col-auto-4 mb-5"><div class="card bg-light border-0 h-100"><div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0"><div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4 py-3"><i><img src="./img/venta3.png" alt="70"/></i></div><h2 class="fs-4 fw-bold">Ventas Intuitivas</h2><p class="mb-0">Sistema fácil de usar y comprender para los usuarios para interactuar de manera natural y sin dificultades.</p></div></div></div><div class="col-lg-6 col-auto-4 mb-5"><div class="card bg-light border-0 h-100"><div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0"><div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4 py-3 px-3"><i><img src="./img/venta1.png" alt="70"/></i></div><h2 class="fs-4 fw-bold">Eficiencia</h2><p class="mb-0">Agilizando y ahorrando tiempo por medio de la gestión de inventario, seguimiento de clientes, etc.</p></div></div></div></div></div></section>';

               //Limpiar Iframe
                var frame = window.frames['myFrame']; 
                frame.document.open(); 
                frame.document.close();
                
                //ocultar Iframe
                document.getElementById("miframe").style.display = "none";
            }
            function eliminar() {
                document.getElementById('text').innerHTML = '';
                document.getElementById("miframe").style.display = "block";
            }
          </script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                            
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none" class="btn-lg nav-link active" onclick="Inicio()" href="#">Inicio</a>
                    </li>                    
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none" onclick="eliminar()" class="btn-lg btn btn-outline-light" href="Controlador?menu=Producto&accion=Listar" target="myFrame">Producto</a>
                    </li>
                    <li  class="nav-item">
                        <a style="margin-left: 10px; border: none" onclick="eliminar()" class="btn-lg btn btn-outline-light" href="Controlador?menu=Empleado&accion=Listar" target="myFrame">Empleado</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none" onclick="eliminar()" class="btn-lg btn btn-outline-light" href="Controlador?menu=Cliente&accion=Listar" target="myFrame">Cliente</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none" onclick="eliminar()" class="btn-lg btn btn-outline-light" href="Controlador?menu=NuevaVenta&accion=default" target="myFrame">Nueva Venta</a>
                    </li>
                </ul>
                
                <div class="dropdown">
                    <button style="border: none" class="btn-lg btn btn-outline-light dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        ${usuario.getNom()}
                    </button>
                    <ul class="dropdown-menu text-center">
                        <li><a class="dropdown-item" href="#"> <img src="./img/user.png" alt="60" width="60"/> </a></li>
                        <li><a class="dropdown-item" href="#">${usuario.getNom()}</a></li>
                        <li><a class="dropdown-item" href="#">usuario@gmail.com</a></li>
                        <div class="dropdown-divider"></div>
                        <form action="Validar" method="POST">
                            <button name="accion" value="Salir" class="dropdown-item" href="#">Salir</button>
                        </form>
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="container" class="m-2"style="height: 600px">
            <div align="center" id="text"></div>
            <iframe name="myFrame" style="height: 100%; width: 100%; border: none;" id="miframe"></iframe>
            <!-- Footer-->
            <footer class="py-5 bg-dark">
                <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Sistema Web de ventas 2023</p></div>
            </footer>
        </div>
                        
        
        
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/1Furfhe8BFbkEhXn1xcYPr8jYAACNpfV7p" crossorigin="anonymous"></script>

    </body>
</html>
