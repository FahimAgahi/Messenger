package org.bihe.servlets;

import org.bihe.beans.Person;
import org.bihe.db.dao.PersonDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/SignUp")
public class SignUp extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String flName = req.getParameter("flName");
        String lsName = req.getParameter("lsName");
        String uName = req.getParameter("uName");
        String password = req.getParameter("password");
        String conPassword = req.getParameter("conPassword");
        String[] datelist = req.getParameter("birthDate").split("-");
        String phoneNum = req.getParameter("phoneNum");
        String gender = req.getParameter("Gender");
        java.sql.Date date = new java.sql.Date(Integer.parseInt(datelist[0]), Integer.parseInt(datelist[1]), Integer.parseInt(datelist[2]));
        Person person = new Person(PersonDaoImpl.setID(),flName, lsName, uName, password, date, phoneNum, gender);
        PersonDaoImpl personDao = new PersonDaoImpl();
        personDao.addPerson(person);
        SetUp.personArray.add(person);
        resp.sendRedirect("LogIn.jsp");


    }
}
