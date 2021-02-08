package org.bihe.db.dao;

import org.bihe.beans.Person;

import java.util.ArrayList;

public interface PersonDao {

    public boolean addPerson(Person person);
    public boolean deletePerson();
    public boolean editPerson();
    public boolean addContact(int ownerID , int contactID);
    public ArrayList<Person> getPersons();
}
