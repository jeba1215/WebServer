class Getfiles
  def index
    @path = '/media/sf_Anime,_VN,_LN/'
    @completed = get_files('Completed/')
    @watching = get_files('Watching, not watched yet/')
#    show @completed
    puts "\n\n\n"
    show @watching
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

  def show(hsh)
    last_key = ""
    hsh.each do |k,v|
      puts k
      v.each do |x|
        print "\t ", x, "\n"
      end
      puts ""
    end
  end
end
