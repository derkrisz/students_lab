require_relative("../db/sql_runner.rb")
require_relative("./house.rb")

class Student

  attr_reader :id, :first_name, :last_name, :house_id, :age

  def initialize(options)
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house_id = options['house_id']
    @age = options['age'].to_i
  end

  def save
    sql = "INSERT INTO students
    (
      first_name,
      last_name,
      house_id,
      age
      )
      VALUES
      (
        $1, $2, $3, $4
        )
      RETURNING *"
      values = [@first_name, @last_name, @house_id, @age]
      student = SqlRunner.run(sql, values)
      @id = student.first['id'].to_i
    end

  def self.find_all
    sql = "SELECT * FROM students"
    students = SqlRunner.run(sql)
    result = students.map {|student| Student.new(student)}
    return result
  end

  def self.find( id )
  sql = "SELECT * FROM students
  WHERE id = $1"
  values = [id]
  student = SqlRunner.run( sql, values )
  result = Student.new( student.first )
  return result
end

  def self.delete_students
    sql = "DELETE FROM students"
    students = SqlRunner.run(sql)
  end

  def delete
    sql = "DELETE FROM students
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values)
  end

  def find_house
    sql = "SELECT * FROM students"
  end
end
