require 'active_record'
require_relative 'active_record'

class Programmer < ActiveRecord::Base
end

programmers_file = File.open('programmers.csv', 'r')

programmers_file.each_line do |line|
 programmer_info_array = line.split(',').to_a
 p1 = Programmer.new
 p1.name = programmer_info_array[0]
 p1.twitter_pic = programmer_info_array[1]
 p1.twitter_username = programmer_info_array[2]
 p1.save
end

ActiveRecord::Base.connection.close