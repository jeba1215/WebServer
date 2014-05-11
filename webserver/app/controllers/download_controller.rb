class DownloadController < ApplicationController
  helper :all
  def index
    #test = "/media/voicesofadistantstar.mkv"
    #test = "/media/ass.txt"
    test = "/home/jesper/Dropbox/Images/jy5Jibn.jpg"
    @title = params[:title]
    @name = params[:name]
    @path = '/media/sf_Anime,_VN,_LN/Watching, not watched yet/'+@title+'/'+@name
    #call_to_download(@path)
    call_to_download(@path)
  end
  
  def call_to_download(path)
    send_file( path )
  end

end
