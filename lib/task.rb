require 'pg'

class Task

  attr_reader :id, :title

  def initialize(id:, title:)
    @id = id
    @title = title
  end

  def self.all
    connection = PG.connect(dbname: 'to_do_database')
    result = connection.exec_params("SELECT * FROM tasks;")
    result.map do |task|
      Task.new(id: task['id'], title: task['title'])
    end
  end

end