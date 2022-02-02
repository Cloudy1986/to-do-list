require 'task'

describe Task do
  
  describe '.all' do
    it 'return the tasks from the database' do
      connection = PG.connect(dbname: 'to_do_database_test')
      connection.exec("INSERT INTO tasks (title) VALUES ('Buy new car');")
      connection.exec("INSERT INTO tasks (title) VALUES ('Reply to emails');")
      connection.exec("INSERT INTO tasks (title) VALUES ('Phone the council');")

      tasks = Task.all
      
      expect(tasks[0]).to be_a Task
      expect(tasks[0].title).to eq 'Buy new car'
      expect(tasks[1].title).to eq 'Reply to emails'
      expect(tasks[2].title).to eq 'Phone the council'
    end
  end

end