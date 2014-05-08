class WelcomeController < ApplicationController
  def index
    @path = '/media/sf_Anime,_VN,_LN/'
    #@completed = get_files('Completed/')
    @watching = get_files('Watching, not watched yet/')
    #@files = @completed.merge(@watching)
    @files = @watching
  end

  def get_files(str)
    temp = {}
    path = @path+str
    Dir.foreach(path) do |x|
      next if x =='.' or x == '..'
      if Dir.exists? (path+x)
        temp[x] = []
        Dir.foreach(path+x) do |y|
          next if y =='.' or y == '..'
          temp[x].push y
        end
      end
    end
    return temp
  end

end
