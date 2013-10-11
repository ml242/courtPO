class Entry < ActiveRecord::Base
  def self.show_all(responses)
    response.each do |content|
      @id = content[:id]
      @author = content[:author]
      @photo_url = content[:photo_url]
      @date_taken = content[:date_taken]
    end
  end
end