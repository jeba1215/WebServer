class DownloadController < ApplicationController
  def anime
    @title = params[:title]
    @name = params[:name]
    @path = '/media/sf_Anime,_VN,_LN/Watching, not watched yet/'+@title+'/'+@name
    send_file @path, :x_sendfile=>true
  end
end
