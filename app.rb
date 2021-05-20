require 'sinatra/base'
require 'sinatra/reloader'

class DailyDiary < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Daily Diary'
  end

  get '/diary/new' do
    erb(:'diary/new')
  end

  post '/diary' do
    @diary = []
    @diary << params[:entry]
    'Entry stored!'
  end

end