require 'pry'
require 'pry-remote'
require 'pry-nav'

subways = {n_train: ["eighth street", "union square", "twenty third and broadway", "twenty eighth and broadway", "herald square", "times square"],
          six_train: ["astor place", "union square", "twenty third and park", "twenty eighth and park", "thirty third", "grand central"],
          l_train: ["first avenue", "third avenue", "union square", "sixth avenue", "eighth avenue"]}

def request_input(question)
  puts question
  gets.chomp
end

def fetch_line(station, lines)
  trains = {}
  trains[:n_train] = true if lines[:n_train].include?(station)
  trains[:six_train] = true if lines[:six_train].include?(station)
  trains[:l_train] = true if lines[:l_train].include?(station)
  if trains[:n_train] == true && trains[:six_train] == true
    return nil
  elsif trains.empty?
    return false
  else return trains.key(true)
  end
end





def fetch_stop(leave_from, arrive_at, lines)
  # binding.pry
  train1 = fetch_line(leave_from, lines)
  train2 = fetch_line(arrive_at, lines)

  if train1 == nil && train2 == nil
    train1 = lines.keys.sample
  elsif train1 == nil then
    train1 = train2
  elsif train2 == nil then
    train2 = train1
  end
  if train1 == false || train2 == false
    stops = "I'm sorry, I don't recognize one of your stop names"
  elsif train1 != train2 then
    stops_line1 = lines[train1].index(leave_from) - lines[train1].index("union square")
    stops_line2 = lines[train2].index(arrive_at) - lines[train2].index("union square")
    stops = stops_line1.abs + stops_line2.abs
  else
    stop_number = lines[train1].index(leave_from) - lines[train1].index(arrive_at)
    stops = stop_number.abs
  end
  return stops
end
subways.each{|line, stops| puts "the available stops for #{line} are: #{gitstops}"}
departure = request_input("Where are you leaving from?")
arrival = request_input("and where are you going?")
trip = fetch_stop(departure, arrival, subways)
puts trip