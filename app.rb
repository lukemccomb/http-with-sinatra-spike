require "sinatra/base"

class MyApp < Sinatra::Application

  def initialize
    super
    @photos = ["http://lukemccomb.com/images/abstract1.jpg",
               "http://lukemccomb.com/images/outdoors1.jpg",
               "http://lukemccomb.com/images/abstract2.jpg",
               "http://lukemccomb.com/images/abstract6.jpg",
               "http://lukemccomb.com/images/outdoors12.jpg",
               "http://lukemccomb.com/images/outdoors13.jpg",
               "http://lukemccomb.com/images/outdoors15.jpg",
               "http://lukemccomb.com/images/people1.jpg",
               "http://lukemccomb.com/images/objects1.jpg",
               "http://lukemccomb.com/images/events1.jpg",
    ]
    @music = ["https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/156153650&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true",
    "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/155143944&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true",
    "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/150593597&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"]
  end

  get "/" do
    erb :main
  end

  get "/music" do
    erb :music, :locals => {:music => @music}
  end

  # get "/music/:identifier" do
  #   identifier = params[:identifier]
  #   "You found my jam: #{identifier}"
  # end

  run! if app_file == $0
end
