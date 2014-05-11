module Download
  extend ActiveSupport:Concern
  
  module ClassMethods
    def download
      send_file( @path )
    end
  end
end
