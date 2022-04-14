using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ToDoList.Clases
{
    public class Usuario{
        private string nombre;
        private string correo;
        private string pass;

        public Usuario(string nombre, string correo, string pass){
            this.nombre = nombre;
            this.correo = correo;
            this.pass = pass;
        }

        public string Nombre { get => nombre; set => nombre = value; }
        public string Correo { get => correo; set => correo = value; }
        public string Pass { get => pass; set => pass = value; }
    }
}