package com.servlet.jsp.mvctwo;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {
	
	public static List<Student> getStudents() {
		// create an empty list
		List<Student> students = new ArrayList<>();
		
		// add sample data
		students.add(new Student("Mary", "Public", "hello@gmail.com"));
		students.add(new Student("Tim", "Doe", "qwert@gmail.com"));
		students.add(new Student("Ajay", "Rao", "ajay@gmail.com"));
		
		// return the list
		return students;
	}
}
