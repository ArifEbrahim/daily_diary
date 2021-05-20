require 'sinatra/base'
require 'sinatra/reloader'

class DailyDiary < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Daily Diary'
  end

end