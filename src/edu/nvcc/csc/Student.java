package edu.nvcc.csc;
import java.util.Arrays;

/**
 * Created by tkanchanawanchai6403 on 1/31/2017.
 */
public class Student {
    String firstName;
    String lastName;
    String email;

    public Student() {
        firstName = "John";
        lastName = "Doe";
        email = "null";

    }

    public Student(String firstName, String lastName, String email) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
    }


    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email){
        this.email= email;
    }

    @Override
    public String toString() {
        return "Student: " +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", 'email='" + email;
    }
}
