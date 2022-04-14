<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calendario.aspx.cs" Inherits="ToDoList.mantenedor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Calendario Web</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <script src="js/jquery.min.js"></script>
    <script src="js/moment.min.js"></script>
    <!-- Fullcalendar -->
    <link rel="stylesheet" href="css/fullcalendar.min.css"/>
    <script src="js/fullcalendar.min.js"></script>
    <script src="js/es.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js"></script>

</head>
<body>
    <%@import Namespace = "ToDoList.Clases"%>
    <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-7"></div><div id="CalendarioWeb"></div>
            <div class="col"></div>
        </div>
    </div>
<script>
    $(document).ready(function(){
        $('#CalendarioWeb').fullCalendar({
            header:{
                left:'today,prev,next,Miboton',
                center:'tittle',
                right:'month, basicWeek, basicDay'
            },
            
            
            dayClick:function(date,jsEvent,view){

                $("#txt_fecha").val(date.format());
                $("#ModalEventos").modal('show');
            },
            eventSources:[{
                events: '/Evento.cs',
            color:"black",
            textColor:"yellow"
            }],
            eventClick:function(calEvent,jsEvent,view){
                $('#tituloEvento').html(calEvent.title);
                $('#descripcionEvento').html(calEvent.descripcion);
                $("#exampleModal").modal('show');
            }
            
        });
    });
</script>


  
  <div class="modal fade" id="ModalEventos" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="tituloEvento"></h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div id="descripcionEvento"></div>
            Fecha: <input type="text" id="txt_fecha" name="txt_fecha" /><br />
            Evento: <input type="text" id="txt_evento" /><br />
            Hora: <input type="text" id="txt_hora" value="11:30" /><br />
            Descripcion: <textarea  id="txt_descripcion" rows="3" ></textarea>><br />

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-success">Agregar</button>
          <button  type="button" class="btn btn-success">Modificar</button>
          <button type="button" class="btn btn-danger">Borrar</button>
          <button type="button" class="btn btn-default" data-bs-dismiss="modal">Cancelar</button>
        </div>
      </div>
    </div>
  </div>
 
</body>
</html>
