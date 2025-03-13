package SERVLETS;

import LOGICA.Reserva;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ReservaServlet", urlPatterns = {"/ReservaServlet"})
public class ReservaServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        // Obtener la lista de reservas de la sesión
        List<Reserva> listaReservas = (List<Reserva>) session.getAttribute("listaReservas");

        // Si es la primera vez que se usa, inicializar la lista
        if (listaReservas == null) {
            listaReservas = new ArrayList<>();
        }

        // Obtener parámetros del formulario
        String username = request.getParameter("username");
        String fechaReserva = request.getParameter("fechaReserva");
        String espacioTrabajo = request.getParameter("espacioTrabajo");
        String horas = request.getParameter("horas");

        // Crear nueva reserva y agregarla a la lista
        Reserva reserva = new Reserva(username, fechaReserva, espacioTrabajo, horas);
        listaReservas.add(reserva);
      
        // Guardar la lista actualizada en la sesión
        session.setAttribute("listaReservas", listaReservas);

        // Redirigir de vuelta a la página de reservas
        response.sendRedirect("reservas.jsp");
    }
}
