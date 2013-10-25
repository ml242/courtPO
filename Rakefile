namespace :sinatra do

  desc "This makes a Sinatra app"
  task :create do
    puts "Project Name?"
    project = STDIN.gets.chomp
    unless Dir.exists?("#{project}_app")
      Dir.mkdir("#{project}_app")
      Dir.mkdir("#{project}_app/views")
      Dir.mkdir("#{project}_app/public")
      f = File.open("#{project}_app/main.rb", "w+")
      f = File.open("#{project}_app/public/style.css", "w+")
      f.puts("require 'sinatra'")
      f.puts("require 'sinatra/reloader' if development?")
      f.puts("require 'pry'")
      f.puts("require 'pg'")
      f.puts("\n")
      f.puts("get '/' do\nend")
      f.close
    else
      puts "Project already exists"
    end
  end

  desc "sing it"
  task :sing do
    puts "doobee doobee doo"
  end

end
