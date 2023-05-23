/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Cliente;
import Modelo.ClienteDAO;
import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import Modelo.Producto;
import Modelo.ProductoDAO;
import Modelo.Venta;
import Modelo.VentaDAO;
import config.GenerarSerie;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Yohana Avila
 */
public class Controlador extends HttpServlet {
    
    Cliente c = new Cliente();
    ClienteDAO cdao = new ClienteDAO();
    Empleado em = new Empleado();
    EmpleadoDAO edao = new EmpleadoDAO();
    Producto pr =  new Producto();
    ProductoDAO pdao = new ProductoDAO();
    Venta v = new Venta(); 
    VentaDAO vdao = new VentaDAO();
    List<Venta> lista = new ArrayList<>();
    
    String numeroserie;
    int ide;
    int idc;
    int idp;
    
    int item;
    int cod;
    String descripcion;
    double precio;
    int cant;
    double subtotal;
    double totalPagar;
    int Item;
    int idpr;
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        
        if (menu.equals("Principal")) {
            request.getRequestDispatcher("Principal.jsp").forward(request, response); 
        }
        if (menu.equals("Empleado")) {
            
            switch (accion) {
                case "Listar":
                    List lista = edao.listar();
                    request.setAttribute("empleados", lista);
                    request.getRequestDispatcher("Empleado.jsp").forward(request, response);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                break;
                
                case "Agregar":
                    em.setDni(request.getParameter("txtDni"));
                    em.setNom(request.getParameter("txtNombres"));
                    em.setTel(request.getParameter("txtTel"));
                    em.setEstado(request.getParameter("txtEstado"));
                    em.setUser(request.getParameter("txtUser"));
                    edao.agregar(em);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                break;
                
                case "Editar":
                    ide = Integer.parseInt(request.getParameter("id"));
                    Empleado e = edao.listarId(ide);
                    request.setAttribute("empleado", e);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                break;
                
                case "Actualizar":
                    em.setDni(request.getParameter("txtDni"));
                    em.setNom(request.getParameter("txtNombres"));
                    em.setTel(request.getParameter("txtTel"));
                    em.setEstado(request.getParameter("txtEstado"));
                    em.setUser(request.getParameter("txtUser"));
                    em.setId(ide);
                    edao.actualizar(em);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                break;
                
                case "Delete":
                    ide = Integer.parseInt(request.getParameter("id"));
                    edao.delete(ide);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                break;
                default:
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
            }
            request.getRequestDispatcher("Empleado.jsp").forward(request, response);
        }
        
        if (menu.equals("Cliente")) {
            switch (accion) {
                case "Listar":
                    List listaC = cdao.listar();
                    request.setAttribute("clientes", listaC);
                    request.getRequestDispatcher("Clientes.jsp").forward(request, response);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                break;
                
                case "Agregar":
                    c.setDni(request.getParameter("txtDni"));
                    c.setNom(request.getParameter("txtNombres"));
                    c.setDireccion(request.getParameter("txtDireccion"));
                    c.setEstado(request.getParameter("txtEstado"));
                    cdao.agregar(c);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                break;
                
                case "Editar":
                    idc = Integer.parseInt(request.getParameter("id"));
                    Cliente cl = cdao.listarId(idc);
                    request.setAttribute("cliente", cl);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                break;
                
                case "Actualizar":
                    c.setDni(request.getParameter("txtDni"));
                    c.setNom(request.getParameter("txtNombres"));
                    c.setDireccion(request.getParameter("txtDireccion"));
                    c.setEstado(request.getParameter("txtEstado"));
                    c.setId(idc);
                    cdao.actualizar(c);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                break;
                
                case "Delete":
                    idc = Integer.parseInt(request.getParameter("id"));
                    cdao.delete(idc);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                break;
                default:
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
            }
            request.getRequestDispatcher("Clientes.jsp").forward(request, response);
        }
        if (menu.equals("Producto")) {
            
            switch (accion) {
                case "Listar":
                    List listaP = pdao.listar();
                    request.setAttribute("productos", listaP);
                    request.getRequestDispatcher("Producto.jsp").forward(request, response);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                break;
                
                case "Agregar":
                    pr.setNom(request.getParameter("txtNombres"));
                    pr.setPrecio(Double.parseDouble(request.getParameter("txtPrecio")));
                    pr.setStock(Integer.parseInt(request.getParameter("txtStock")));
                    pr.setEstado(request.getParameter("txtEstado"));
                    pdao.agregar(pr);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                break;
                
                case "Editar":
                    idp = Integer.parseInt(request.getParameter("id"));
                    Producto p = pdao.listarId(idp);
                    request.setAttribute("producto", p);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                break;
                
                case "Actualizar":
                    pr.setNom(request.getParameter("txtNombres"));
                    pr.setPrecio(Double.parseDouble(request.getParameter("txtPrecio")));
                    pr.setStock(Integer.parseInt(request.getParameter("txtStock")));
                    pr.setEstado(request.getParameter("txtEstado"));
                    pr.setId(idp);
                    pdao.actualizar(pr);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                break;
                
                case "Delete":
                    idp = Integer.parseInt(request.getParameter("id"));
                    pdao.delete(idp);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                break;
                default:
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
            }
            request.getRequestDispatcher("Producto.jsp").forward(request, response);
        }
        
        if (menu.equals("NuevaVenta")) {
            switch (accion) {
                case "BuscarCliente":
                    String dni = request.getParameter("codigocliente");
                    c.setDni(dni);
                    c = cdao.buscar(dni);
                    request.setAttribute("c", c);
                    request.setAttribute("nserie", numeroserie);
                break;
                
                case "BuscarProducto":
                    int id = Integer.parseInt(request.getParameter("codigoproducto"));
                    pr = pdao.listarId(id);
                    request.setAttribute("c", c);
                    request.setAttribute("producto", pr);
                    request.setAttribute("lista", lista);
                    request.setAttribute("totalPagar", totalPagar);
                break;
                
                case "Agregar":
                    request.setAttribute("c", c);
                    totalPagar = 0.0;
                    item = item + 1;
                    cod = pr.getId();
                    descripcion = request.getParameter("nomproducto");
                    precio = Double.parseDouble(request.getParameter("precio"));
                    cant = Integer.parseInt(request.getParameter("cant"));
                    subtotal = precio * cant;
                    v = new Venta();
                    v.setItem(item);
                    v.setIdproducto(cod);
                    v.setDescripcionP(descripcion);
                    v.setPrecio(precio);
                    v.setCantidad(cant);
                    v.setSubtotal(subtotal);
                    lista.add(v);

                    for (int i = 0; i < lista.size(); i++) {
                        totalPagar = totalPagar + lista.get(i).getSubtotal();
                    }                  
                    request.setAttribute("totalPagar", totalPagar);
                    request.setAttribute("lista", lista);
                    request.setAttribute("nserie", numeroserie);
                break;
                
                case "Editar":
                    Item = Integer.parseInt(request.getParameter("Item"));
                    idpr = Integer.parseInt(request.getParameter("idp"));
                    Producto producto = pdao.listarId(idpr);
                    
                    request.setAttribute("c", c);
                    request.setAttribute("producto", producto);
                    request.setAttribute("lista", lista);
                    request.setAttribute("totalPagar", totalPagar);
                    
                break;
                
                case "Actualizar":
                    request.setAttribute("c", c);
                    totalPagar = 0.0;
                    
                    for (int i = 0; i < lista.size(); i++) {
                        if (lista.get(i).getItem().equals(Item)) 
                        {
                            lista.get(i).setIdproducto(Integer.parseInt(request.getParameter("codigoproducto")));
                            lista.get(i).setDescripcionP(request.getParameter("nomproducto"));
                            precio = Double.parseDouble(request.getParameter("precio"));
                            cant = Integer.parseInt(request.getParameter("cant"));
                            lista.get(i).setPrecio(precio);
                            lista.get(i).setCantidad(cant);
                            
                            double subtt = (cant * precio);
                            lista.get(i).setSubtotal(subtt);
                        }
                    }
                    for (int i = 0; i < lista.size(); i++) {
                        totalPagar = totalPagar + lista.get(i).getSubtotal();
                    }
                    request.setAttribute("totalPagar", totalPagar);
                    request.setAttribute("lista", lista);
                    request.setAttribute("nserie", numeroserie);
                break;
                
                case "Delete":
                    //recorrer lista
                    totalPagar = 0.0;
                    int itemv= Integer.parseInt(request.getParameter("Item")); 
                    
                    for (int i = 0; i < lista.size(); i++) {
                        if (lista.get(i).getItem().equals(itemv)) {
                            lista.remove(i);
                        }
                    }
                    for (int i = 0; i < lista.size(); i++) {
                        totalPagar = totalPagar + lista.get(i).getSubtotal();
                    }
                    request.setAttribute("c", c);
                    request.setAttribute("totalPagar", totalPagar);
                    request.setAttribute("lista", lista);
                break;
                             
                case "GenerarVenta":
                    //actualiza  stock
                    for(int i = 0; i < lista.size(); i++){
                     
                        Producto pr = new Producto();
                        int cantidad = lista.get(i).getCantidad();
                        int idproducto = lista.get(i).getIdproducto();
                        
                        ProductoDAO aO = new ProductoDAO();
                        pr=aO.buscar(idproducto);
                        
                        int sac = pr.getStock()-cantidad;
                        aO.actualizarstock(idproducto, sac);
                    }
                    //Guardar Venta
                    v.setIdcliente(c.getId());
                    v.setIdempleado(2);
                    v.setNumserie(numeroserie);
                    v.setFecha("2019-06-14");
                    v.setMonto(totalPagar);
                    v.setEstado("1");
                    vdao.guardarVenta(v);
                    //Guardar Detalles Venta
                    int idv=Integer.parseInt(vdao.IdVentas());
                    
                    for (int i = 0; i < lista.size(); i++){
                        v=new Venta();
                        v.setId(idv);
                        v.setIdproducto(lista.get(i).getIdproducto());
                        v.setCantidad(lista.get(i).getCantidad());
                        v.setPrecio(lista.get(i).getPrecio());
                        vdao.guardarDetalleVentas(v);
                    }
                break;
                
                default:
                    numeroserie = vdao.GenerarSerie();
                    if (numeroserie==null) {
                        numeroserie="00000001";
                        request.setAttribute("nserie", numeroserie);
                    }else{
                        int incrementar = Integer.parseInt(numeroserie);
                        GenerarSerie gs = new GenerarSerie();
                        numeroserie=gs.NumeroSerie(incrementar);
                        request.setAttribute("nserie", numeroserie);
                    }
                    request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);
            }
            request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
