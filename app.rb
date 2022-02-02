require 'sinatra/base'
require 'sinatra/reloader'
require 'pg'

class ToDoListManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :homepage
  end

  get '/to-do' do
    connection = PG.connect(dbname: 'to_do_database')
    result = connection.exec_params("SELECT * FROM tasks;")
    @tasks = result.each { |task| task }
    # @tasks = Task.all
    erb :index
  end

  run! if app_file == $0
end
