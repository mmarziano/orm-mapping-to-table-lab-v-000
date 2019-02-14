class Student 
  attr_accessor :name, :grade
  attr_reader :id 
  
  def self.create_table 
    sql = <<-SQL
      CREATE TABLE students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade INTEGER
      )
    SQL
    DB[:conn].execute(sql)
  end   
end 