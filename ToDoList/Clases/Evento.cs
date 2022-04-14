using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ToDoList.Clases
{
    public class Evento
    {
        public string fecha;
        public string eventos;
        public string hora;
        public string descripcion;

        public Evento(string fecha, string eventos, string hora, string descripcion)
        {
            this.fecha = fecha;
            this.eventos = eventos;
            this.hora = hora;
            this.descripcion = descripcion;
        }

        public string Fecha { get => fecha; set => fecha = value; }
        public string Eventos { get => eventos; set => eventos = value; }
        public string Hora { get => hora; set => hora = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
    }
}