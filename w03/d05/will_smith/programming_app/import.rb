require 'pry'
require_relative 'programmers'

programmers = File.open('programmers.csv', 'r')
@programmers = []

programmers.each do |line|
  programmer_array = line.split(',')
  @programmers << programmer_array
end


