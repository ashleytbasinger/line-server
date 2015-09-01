class Line < ActiveRecord::Base
  def get_line(index)
    File.readlines(self.file_location)[index]
  end  
end
