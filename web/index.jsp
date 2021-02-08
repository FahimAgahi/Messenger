<%@ page import="org.bihe.db.dao.PersonDaoImpl" %>
<%@ page import="org.bihe.beans.Person" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Ava
  Date: 2/4/2021
  Time: 8:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>Hi</h1>
  <%
    PersonDaoImpl personDao = new PersonDaoImpl();
    ArrayList<Person> persons = personDao.getPersons();
  %>
  <%= persons.get(0).getuName() + "  " + persons.get(0).getBirthDate()%>


  </body>
</html>
