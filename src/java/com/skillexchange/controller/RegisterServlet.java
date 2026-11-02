package com.skillexchange.controller;

import com.skillexchange.dao.UserDAO;
import com.skillexchange.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String bio = request.getParameter("bio");

        try (PrintWriter out = response.getWriter()) {

            if (fullName == null || fullName.trim().isEmpty()
                    || email == null || email.trim().isEmpty()
                    || password == null || password.isEmpty()) {

                out.println("<h2>Please fill all required fields!</h2>");
                return;
            }

            User user = new User(
                    fullName.trim(),
                    email.trim(),
                    password,
                    "STUDENT",
                    phone,
                    bio
            );

            UserDAO userDAO = new UserDAO();

            if (userDAO.registerUser(user)) {
                out.println("<h1>Registration Successful!</h1>");
                out.println("<p>Welcome to SkillExchange.</p>");
                out.println("<a href='index.html'>Go to Home</a>");
            } else {
                out.println("<h1>Registration Failed!</h1>");
                out.println("<p>Email may already be registered or a database error occurred.</p>");
            }
        }
    }
}