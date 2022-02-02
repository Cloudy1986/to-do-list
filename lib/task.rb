require 'pg'

class Task

  def self.all
    connection = PG.connect(dbname: 'to_do_database')
    result = connection.exec_params("SELECT * FROM tasks;")
  end

end