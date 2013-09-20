#!/usr/bin/ruby

f = './roster.txt'
puts "hi"
if File.exists? f
  File.readlines(f).each do |name|
    puts name
  end
end
