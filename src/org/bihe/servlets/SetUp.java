package org.bihe.servlets;

import org.bihe.beans.Person;
import org.bihe.db.dao.PersonDaoImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
@WebServlet ("/SetUp")
public class SetUp extends HttpServlet {
    public static ArrayList<Person> personArray = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PersonDaoImpl personDao = new PersonDaoImpl();
        personArray = personDao.getPersons();
        resp.sendRedirect("LogIn.jsp");

    }

}
