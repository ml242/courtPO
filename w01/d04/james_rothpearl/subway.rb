
N_line = ["times_square", "34th", "28th_n", "23rd", "union_square", "8th"],

L_line = ["8th", "6th", "union_square", "3rd", "1st"],

S_line = ["grand_central", "33rd", "28th_s", "23rd", "union_square", "astor_place"]

mta = [[N_line],[L_line],[S_line]]

def ask(string)
  puts string
  gets.chomp!
end

print "What line are you getting on at?"
  gets.chomp!
print "What stop are you getting on at?"
  gets.chomp!
print "What is your destination?"
  gets.chomp!

def rider_stops_input(line, origin, destination)
  line = ask("What line are you getting on at?")
  origin = ask("What stop are you getting on at?")
  destination = ask("What is your destination?")
end



def index_conversion(origin, destination)
  if line == "N_Line"
    puts N_line.index(origin)
    puts N_line.index(destination)
  return stop_length.abs = N_line.index(origin) - N_line.index(destination)
    #now subtract both and get the absolute value
    #that will equal the amount of stops
  end
end

print stop_length.abs


# array = ['a', 'b', 'c']
# hash = Hash[array.map.with_index.to_a]    # => {"a"=>0, "b"=>1, "c"=>2}
# hash['b'] # => 1

