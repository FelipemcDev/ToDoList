<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ToDoList.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<link rel="stylesheet" href="css/login.css"/>
</head>
<body>
 <form id="form1" runat="server" action="login.aspx" method="post">
        <div id="login-box">
            <h1>To Do List </h1>

            <div class="form">
                <div class="item">
                    <i class="fa fa-user-circle" aria-hidden="true"></i>
                    <input type="text" placeholder="correo" name="txt_cor" value=""/> 
                </div>

                <div class="item"> 
                    <i class="fa fa-key" aria-hidden="true"></i>
                    <input type="password" placeholder="password" name="txt_pas" value=""/> 
                </div>

            </div>
            
            <button type="submit" name="btn_env" value="Enviar">Ingresar</button> 
        </div>
    </form>


    <%@import Namespace="ToDoList.Clases"%>
    <%
        Usuario u;
        List<Usuario> lista = new List<Usuario>();
        string nom = "", cor = "", pas = "", error = "";
        bool estado = false;

        if (Session["Usuarios"] != null){
            lista = (List<Usuario>)Session["Usuarios"];

        } else {
            Response.Redirect("Default.aspx");
        }

        if (!string.IsNullOrEmpty(Request.Form["btn_env"])){
            cor = Request.Form["txt_cor"].Trim();
            pas = Request.Form["txt_pas"].Trim();

            if (cor.Length == 0 || pas.Length == 0){
                error = "No se ingreso el nombre y/o la contraseña";
                Response.Write("<script>alert('" + error + "');</script>");
            } else {
                foreach (var item in lista){
                    if (item.Correo.Equals(cor) && item.Pass.Equals(pas)){
                        nom = item.Nombre;
                        estado = true;
                    }
                }

            }
            if (estado ==  true){
                Session["nom_usu"] = nom;
                Response.Redirect("calendario.aspx");
            } else {
                Response.Write("<script>alert('El nombre y la contraseña no son validos');</script>");
            }
        }
        %>
</body>
</html>
