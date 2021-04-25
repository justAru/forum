package kz.iitu.forum.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import kz.iitu.forum.DBConnection;

@WebServlet(name = "AddPostServlet", value = "/AddPostServlet")
public class AddPostServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection connection = null;
        try {
            connection = DBConnection.init();
            PreparedStatement st = connection
                    .prepareStatement("INSERT INTO posts (title, body) VALUES (?, ?)");

            st.setString(1, request.getParameter("title"));
            st.setString(2, request.getParameter("body"));
            st.executeUpdate();
            st.close();
            connection.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
//        response.sendRedirect(request.getContextPath()+"/");
    }
}