package org.bihe.db.dao;

import org.bihe.beans.Person;
import org.bihe.db.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;

public class PersonDaoImpl implements PersonDao {


    private static Connection connection;
    private static final String INSERT_PERSON = "insert into person (PersonID , FirstName ,LastName ,UserName ,Password ,BirthDate ,Phoneno ,Gender) values (?,?,?,?,?,?,?,?)";
    private static final String SELECT_ALL = "select * from person";
    private static final String INSERT_CONTACT = "insert into Contact (ContactOwner , ContactID ) values (?,?)";

    public PersonDaoImpl() {

    }


    @Override
    public boolean addPerson(Person person) {

        Connection connection = DBConnection.getConnection();
        try {
            PreparedStatement statment = connection.prepareStatement(INSERT_PERSON);
            statment.setInt(1, person.getId());
            statment.setString(2, person.getFlName());
            statment.setString(3, person.getLsName());
            statment.setString(4, person.getuName());
            statment.setString(5, person.getPassword());
            statment.setDate(6, (Date) person.getBirthDate());
            statment.setString(7, person.getPhoneNum());
            statment.setString(8, person.getGender());
            int ex = statment.executeUpdate();
            return ex == 1;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;


    }


    @Override
    public boolean deletePerson() {
        return false;
    }

    @Override
    public boolean editPerson() {
        return false;
    }

    @Override
    public boolean addContact(int ownerID, int contactID) {

        Connection connection = DBConnection.getConnection();
        try {
            PreparedStatement statment = connection.prepareStatement(INSERT_CONTACT);
            statment.setInt(1, ownerID);
            statment.setInt(2, contactID);
            int ex = statment.executeUpdate();
            return ex == 1;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;

    }

    @Override
    public ArrayList<Person> getPersons() {
        ArrayList<Person> Persons = new ArrayList<Person>();
        try {
            Connection connection = DBConnection.getConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(SELECT_ALL);
            while (rs.next()) {
                Person contact = new Person();
                contact.setFlName(rs.getString("FirstName"));
                contact.setLsName(rs.getString("LastName"));
                contact.setuName(rs.getString("UserName"));
                contact.setPassword(rs.getString("Password"));
                contact.setBirthDate(rs.getDate("BirthDate"));
                contact.setPhoneNum(rs.getString("Phoneno"));
                contact.setGender(rs.getString("Gender"));
                Persons.add(contact);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return Persons;
    }

    public static int setID() {
        Connection c = DBConnection.getConnection();
        int id = 0;
        try {
            Statement st = c.createStatement();
            ResultSet res = st.executeQuery(SELECT_ALL);
            while (res.next()) {
                id++;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return id + 1;
    }

}