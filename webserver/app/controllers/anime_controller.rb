class AnimeController < ApplicationController
  def index
    @title = params[:title]
    @asd = "asdasdasd"
    @episodes = params[:episodes]
  end

  def download
    path = '/media/sf_Anime,_VN,_LN/Watching, not watched yet/'+params[:title]+'/'+params[:name]
    send_file( path )
  end
end
