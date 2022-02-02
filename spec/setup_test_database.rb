require 'pg'

def setup_test_database
  connection = PG.connect(dbname: 'to_do_database_test')
  p "Setting up test database"
  connection.exec("TRUNCATE tasks;")
end
