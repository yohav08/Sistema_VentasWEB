# 🛒 Sistema_VentasWEB
**Sistema_VentasWEB** es una aplicación web desarrollada como proyecto final para la asignatura de **Programación Avanzada**, construida con **Java Web (JSP)** e integrada con **MySQL**, aplicando el patrón **Modelo Vista Controlador (MVC)** y el modelo de acceso a datos **DAO (Data Access Object)**.

---

## 🎯 Funcionalidades principales
- **Inicio de sesión** con autenticación por usuario y contraseña. Se muestra en pantalla el usuario actualmente conectado y opción para cerrar sesión.
- **Gestión de productos**: permite registrar, consultar, editar y eliminar productos. Admite cualquier tipo de inventario (informática, ropa, alimentos, etc.).
- **Gestión de empleados**: CRUD completo, incluyendo asignación de roles (cliente, administrador, etc.).
- **Gestión de clientes**: alta, edición, consulta y eliminación de registros.
- **Módulo de ventas**:
  - Búsqueda de clientes y productos por código.
  - Selección de cantidad y cálculo automático del total.
  - Registro de ventas, edición y eliminación de productos antes de confirmar.
  - Generación de factura e impresión directa desde el sistema.

---

## ⚙️ Tecnologías y herramientas utilizadas
El proyecto fue desarrollado en **Java 16** utilizando **JSP**, **Servlets** y el patrón **MVC**. Se conecta a una base de datos **MySQL** mediante el patrón **DAO**, y se ejecuta en el servidor **Apache Tomcat 10.1.8**. Para el entorno local se utilizó **XAMPP** (Apache + MySQL), y el desarrollo se realizó en **NetBeans IDE**, con soporte para aplicaciones web Jakarta EE 9.

---

## 📦 Dependencias importantes y Base de datos
Las siguientes librerías están en la raíz del proyecto:
- `jakarta.servlet.jsp.jstl-2.0.0.jar`
- `jakarta.servlet.jsp.jstl-api-2.0.0.jar`
- `mysql-connector-java-8.0.29.jar`
- `apache-tomcat-10.1.8.zip` (versión usada para evitar incompatibilidades)
- `bd_ventas.sql` incluido para importar desde **phpMyAdmin**.

---

## 🚀 ¿Cómo ejecutar el proyecto?

Instala JDK 16(versión utilizada en la construcción del proyecto) y Apache Tomcat 10.1.8.(incluido en el proyecto), después importa `bd_ventas.sql` desde phpMyAdmin (XAMPP) y por ultimo abre el proyecto en NetBeans, configura Tomcat y ejecuta.

---

## 📝 Licencia

Este proyecto se entrega como parte de un trabajo académico. Uso personal y educativo permitido.


