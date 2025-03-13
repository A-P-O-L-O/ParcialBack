<%@page import="LOGICA.Reserva"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Listado de Reservas</title>

        <!-- CDN de Tailwind CSS -->
        <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">

        <!-- CDN de Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    </head>
    <body class="bg-gray-100 p-8">
        <div class="max-w-6xl mx-auto bg-white p-6 rounded-lg shadow-lg">
            <h1 class="text-3xl font-bold mb-6 text-center text-blue-600">Listado de Reservas</h1>

            <%
                List<Reserva> reservas = (List<Reserva>) request.getSession().getAttribute("listaReservas");
                if (reservas != null && !reservas.isEmpty()) {
            %>

            <div class="overflow-x-auto">
                <table class="min-w-full bg-white border border-gray-200 rounded-lg overflow-hidden shadow-md">
                    <thead class="bg-blue-500 text-white">
                        <tr>
                            <th class="py-3 px-4 text-left">Usuario</th>
                            <th class="py-3 px-4 text-left">Espacio</th>
                            <th class="py-3 px-4 text-left">Fecha</th>
                            <th class="py-3 px-4 text-left">Duración</th>
                            <th class="py-3 px-4 text-center">Eliminar</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-200">
                        <%
                            for (Reserva reserva : reservas) {
                        %>
                        <tr class="hover:bg-gray-50 transition">
                            <td class="py-3 px-4"><%= reserva.getUsername()%></td>
                            <td class="py-3 px-4"><%= reserva.getEspacioTrabajo()%></td>
                            <td class="py-3 px-4"><%= reserva.getFechaReserva()%></td>
                            <td class="py-3 px-4"><%= reserva.getHoras()%></td>
                            <td class="py-3 px-4 text-center">
                                <form action="EliminarReservaServlet" method="POST">
                                    <input type="hidden" name="reservaEliminar" value="<%= reserva.getUsername()%>" required>
                                    <button type="submit" class="text-red-500 hover:text-red-700 transition text-2xl">
                                        <i class="fas fa-trash-alt"></i>
                                    </button>
                                </form>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>

            <%
            } else {
            %>
            <p class="text-center text-gray-500 mt-6">No hay reservas disponibles.</p>
            <%
                }
            %>

            <div class="mt-6 flex justify-center">
                <a href="index.html" class="px-6 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600 transition">
                    Volver al inicio
                </a>
            </div>
        </div>
    </body>
</html>
