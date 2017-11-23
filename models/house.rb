require_relative("../db/sql_runner.rb")

class House

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  def save
    sql = "INSERT INTO houses
    (
      name
    )
    VALUES
    (
      $1
    )
    RETURNING *"
    values = [@name]
    house = SqlRunner.run(sql, values)
    @id = house.first['id'].to_i
  end

  def self.delete_houses
    sql = "DELETE FROM houses"
    students = SqlRunner.run(sql)
  end

end
