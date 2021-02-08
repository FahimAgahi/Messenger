package org.bihe.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/Login")
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String uName = req.getParameter("user");
        String password = req.getParameter("pass");


        for (int i = 0; i < SetUp.personArray.size(); i++) {
            if (SetUp.personArray.get(i).getuName().equalsIgnoreCase(uName) || SetUp.personArray.get(i).getPhoneNum().equalsIgnoreCase(uName)) {
                if (SetUp.personArray.get(i).getPassword().equalsIgnoreCase(password)) {
                    HttpSession logIn =   req.getSession();
                    logIn.setAttribute("logIn" , SetUp.personArray.get(i).getId());
                    System.out.println("welcome " + uName);
                }
            }
        }


    }
}
