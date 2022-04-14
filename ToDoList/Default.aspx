<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ToDoList.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <%@import Namespace="ToDoList.Clases"%>
    <%
        Usuario u;
        List<Usuario> lista_usuario = new List<Usuario>();
        u = new Usuario("Felipe", "felipemunoz@gmail.com", "1234");
        lista_usuario.Add(u);
        u = new Usuario("Andres", "andrestobar@gmail.com", "321");
        lista_usuario.Add(u);

        Session["Usuarios"] = lista_usuario;

        

        Response.Redirect("login.aspx");






    %>
</body>
</html>
