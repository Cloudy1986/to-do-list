require 'task'

describe Task do
  
  describe '.all' do
    it 'return the tasks from the database' do
      tasks = Task.all

      expect(tasks[0]['title']).to eq 'Take out the bins'
      expect(tasks[1]['title']).to eq 'Wash the car'
      expect(tasks[2]['title']).to eq 'Buy groceries'
    end
  end
  


end