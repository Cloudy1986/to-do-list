require 'sinatra/base'
require 'sinatra/reloader'
require './lib/task'
require 'pg'

class ToDoListManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions, :method_override

  get '/' do
    erb :homepage
  end

  get '/to-do' do
    @tasks = Task.all
    erb :index
  end

  get '/to-do/new' do
    erb :new
  end

  post '/to-do' do
    Task.create(title: params["title"])
    redirect '/to-do'
  end

  delete '/to-do/:id' do
    p params['id']
    # Task.delete(params['id'])
    redirect '/to-do'
  end

  run! if app_file == $0
end
