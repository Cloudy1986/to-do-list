require 'sinatra/base'
require 'sinatra/reloader'
require './lib/task'
require 'pg'

class ToDoListManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :homepage
  end

  get '/to-do' do
    @tasks = Task.all
    erb :index
  end

  run! if app_file == $0
end
