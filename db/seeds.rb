require_relative('../models/student.rb')
require('pry-byebug')

Student.delete_students

student1 = Student.new({
  'first_name' => 'George',
  'last_name' => 'Foreman',
  'house' => 'Fire',
  'age' => 30
  })

student2 = Student.new({
  'first_name' => 'Donald',
  'last_name' => 'Trump',
  'house' => 'Air',
  'age' => 70
  })

student3 = Student.new({
  'first_name' => 'Kim',
  'last_name' => 'Jong Un',
  'house' => 'Water',
  'age' => 25
  })

student4 = Student.new({
  'first_name' => 'Viktor',
  'last_name' => 'Orban',
  'house' => 'Earth',
  'age' => 50
  })


student1.save
student2.save
student3.save
student4.save



# 
# binding.pry
#
# nil
