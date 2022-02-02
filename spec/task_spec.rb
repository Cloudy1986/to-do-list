require 'task'

describe Task do
  
  describe '.all' do
    it 'returns the tasks from the database' do
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

  describe '.create' do
    it 'adds a task to the database' do
      task = Task.create(title: 'Borrow money from Dave')

      connection = PG.connect(dbname: 'to_do_database_test')
      result = connection.exec("SELECT * FROM tasks WHERE id = #{task.id};")

      expect(task).to be_a Task
      expect(task.title).to eq result[0]['title']
      expect(task.id).to eq result[0]['id']
    end
  end

end