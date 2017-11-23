# Lab Day!

A school has asked you to make a system for tracking student enrolments.

Each student has:
- A first name
- A second name
- A house
- An age

Part 1:
 - Create a student_enrolments database
 - Create a table for students

Part 2
 - Create a ruby model that can save() a students details
 - Create some seed data to populate the database with students

Part 3
- Add methods to a student to
  - find all the students
  - find a student by id

Part 4
- Create a view to show all the students

Part 5
- Create a view to create a new student
  - hard code a drop down of house names

Part 6

A house can be one of Fire, Water, Earth or Air and should be stored in the database with:
  - A name
  - Optionally, a url for a logo

  - Create a table for houses
  - Create a ruby model that can save() the details of a house
  - Seed the database

Part 7
  - Add a method to House to find all houses
  - Add a method to House to find a house by id

Part 8
  - Alter the student to have a foreign key to House instead of text
  - Add a method to Student to find a house() for the student

Part 9
  - Change the new Student form to populate the drop down from the houses table
