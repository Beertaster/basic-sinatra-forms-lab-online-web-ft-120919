require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @name = params["name"]
    @coach = params["coach"]
    @pg = params["p_g"]
    @sg = params["s_g"]
    @sf = params["s_f"]
    @pf = params["p_f"]
    @center = params["center"]

    erb :team
  end


end
