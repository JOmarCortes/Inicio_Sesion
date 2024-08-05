package com.example.servlets;



import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/procesarFormulario")
public class Inicio_Sesion extends HttpServlet {
    private static final String USUARIO_VALIDO = "pedro";
    private static final String CLAVE_VALIDA = "1234";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("index.html");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");

        if (USUARIO_VALIDO.equals(usuario) && CLAVE_VALIDA.equals(clave)) {
            request.getRequestDispatcher("Bienvenido.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "Usuario o clave incorrectos");
            request.setAttribute("errorExists", true);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
