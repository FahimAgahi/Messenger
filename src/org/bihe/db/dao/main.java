package org.bihe.db.dao;



import org.bihe.beans.Person;

import java.sql.Date;
import java.util.ArrayList;

public class main {


    public static void main(String[] args) {
        PersonDaoImpl personDao = new PersonDaoImpl();
        ArrayList <Person> persons = personDao.getPersons();
        System.out.println(persons.get(0).getuName() + "  " + persons.get(0).getBirthDate());
        java.sql.Date D = new Date(2020,2,2);
        PersonDaoImpl imp = new PersonDaoImpl();
// git is added
    }
}
