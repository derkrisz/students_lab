require_relative('../models/student.rb')
require_relative('../models/house.rb')
require('pry-byebug')

Student.delete_students
House.delete_houses

house1 = House.new({
    'name' => 'Earth'
    })

house2 = House.new({
    'name' => 'Fire'
    })

house3 = House.new({
    'name' => 'Air'
    })

house4 = House.new({
    'name' => 'Water'
    })

house1.save
house2.save
house3.save
house4.save


student1 = Student.new({
  'first_name' => 'George',
  'last_name' => 'Foreman',
  'house_id' => house2.id,
  'age' => 30
  })

student2 = Student.new({
  'first_name' => 'Donald',
  'last_name' => 'Trump',
  'house_id' => house3.id,
  'age' => 70
  })

student3 = Student.new({
  'first_name' => 'Kim',
  'last_name' => 'Jong Un',
  'house_id' => house4.id,
  'age' => 25
  })

student4 = Student.new({
  'first_name' => 'Viktor',
  'last_name' => 'Orban',
  'house_id' => house1.id,
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
