require "sinatra/base"

class MyApp < Sinatra::Application

  def initialize
    super
    @items = [1]
  end

  get "/" do
    erb :main
  end

  get "/music" do
    erb :music
  end

  run! if app_file == $0
end
