
puts "
N Line : 8th Street, Union Square, 23rd Street, 28th Street, 34th Street, Times Square
L Line: 1st Ave, 3rd Ave, Union Square, 6th Ave, 8th Ave
6 Line: Astor Place, Union Square, 28th Street, 33rd Street, Grand Central
"

Line_N = ["8th street", "union square", "23rd street", "28th street", "34th street", "times square"]
Line_L = ["1st ave", "3rd ave", "union square", "6th ave", "8th ave"]
Line_6 =["astor place", "union square", "28th street", "33rd street","grand central"]

def ask(question)
  puts(question)
  gets.chomp
end

def line_locator(line)
  "Line" + "_" + line
end

def line_hash(line)
  line.slice! "Line"
  line
  line.to_sym
end


#First you need to know what line you are starting from
first_line = ask("What is the name of the train line you starting from?").upcase
first_line_id = line_locator(first_line)
print first_line_id
first_line_hash = line_hash(first_line_id)

# Ask what stop you are starting from
first_stop = ask("Please enter starting station name").downcase


#Repeat for destination stop
last_line = ask("What is the name of the train line for your destination?").upcase
last_line_id = line_locator(last_line)
print last_line_id
last_line_hash = line_hash(last_line_id)

last_stop = ask("Please enter destination station name").downcase

# figure out how many stops between first_stop and last_stop
# case first_line_id
#   when "Line_N"
#     print Line_N.find_index(last_stop) - Line_N.find_index(first_stop)
#   when "Line_L"
#     print Line_L.find_index(last_stop)-Line_L.find_index(first_stop)
#   when "Line_6"
#     print Line_6.find_index(last_stop)-Line_6.find_index(first_stop)
# end


#make hash of all the train lines
#Make hash of the train lines
map = Hash.new
map = {:_N => Line_N, :_L => Line_L, :_6 => Line_6}
# print map

# figure out how many steps between first_stop and last stop
if first_line_hash = last_line_hash
  single_line = map[first_line_hash].find_index(last_stop) - map[first_line_hash].find_index(first_stop)
  puts "#{single_line} more until your destination."
else

end


#figure out how to locate the stops

