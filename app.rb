# /app.rb
require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:rules)
end

get("/rock") do
  @play = []

  1.times do
    set = ["rock","paper","scissors"]
    rps = set.at(rand(0..2))
  
    @play.push(rps)
  end

  erb(:rock)
  end

  get("/scissors") do
    @play = []
  
    1.times do
      set = ["rock","paper","scissors"]
      rps = set.at(rand(0..2))
    
      @play.push(rps)
    end
  
    erb(:scissors)
    end

    get("/paper") do
      @play = []
    
      1.times do
        set = ["rock","paper","scissors"]
        rps = set.at(rand(0..2))
      
        @play.push(rps)
      end
    
      erb(:paper)
      end
  