require 'sinatra/base'

class App < Sinatra::Base

    get '/' do 
      erb :super_hero
    end
    
    set :views, Proc.new { File.join(root, "../views/") }
    
    post '/teams' do
      @team_name = params["team"]["name"]
      @team_motto = params["team"]["motto"]
      @member1_name = params["team"]["members"][]["name"]
      @member1_power = params["team"]["members"][]["power"]
      @member1_bio = params["team"]["members"][]["bio"]
      @member2_name = params["team"]["members"][]["name"]
      @member2_power = params["team"]["members"][]["power"]
      @member2_bio = params["team"]["members"][]["bio"]
      @member3_name = params["team"]["members"][]["name"]
      @member3_power = params["team"]["members"][]["power"]
      @member3_bio = params["team"]["members"][]["bio"]
      erb :teams
    end

end
