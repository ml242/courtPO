
puts "
N Line : 8th Street, Union Square, 23rd Street, 34th Street, Times Square
L Line: 1st Ave, 3rd Ave, Union Square, 6th Ave, 8th Ave
6 Line: Astor Place, Union Square, 28th Street, 33rd Street, Grand Central
"

Line_N = ["N_8", "union", "N_23", "N_28", "N_34", "N_times"]
Line_L = ["L_1", "L_3", "union", "L_6", "L_8"]
Line_6 =["6_astor", "union", "6_28", "6_33","6_grand"]

def ask(question)
  puts(question)
  gets.chomp
end

def line_locator(line)
  "Line" + "_" + line
end

def line_stop(line, stop)
  if stop != "union"
    stop = line + "_" + stop
  else
    stop
  end
end

#First you need to know what line you are starting from
first_line = ask("What is the name of the train line you starting from?").upcase
first_line_id = line_locator(first_line)
print first_line_id
#Ask what stop you are starting from

puts "Please enter only the the number of the street or
first word of your street (i.e. 8th street => enter 8 or
  Grand Center => enter Grand)"
first_stop = ask("Please enter either number of street/avenue or first word of the starting station name").downcase
first_line_stop = line_stop(first_line, first_stop)
print first_line_stop

#Repeat for destination stop
last_line = ask("What is the name of the train line for your destination?").upcase
last_line_id = line_locator(last_line)
print last_line_id

puts "Please enter only the the number of the street or
first word of your street (i.e. 8th street => enter 8 or
  Grand Center => enter Grand)"
last_stop = ask("Please enter either number of street/avenue or first word of the destination station name").downcase
last_line_stop = line_stop(last_line, last_stop)
puts last_line_stop

number = Line_N.find_index(first_line_stop)
number2= Line_N.find_index(last_line_stop)
number3 = number2 - number

# figure out how many stops between first_line_stop and last_line_Stop
case first_line_id
  when "Line_N"
    print Line_N.find_index(last_line_stop) - Line_N.find_index(first_line_stop)
  when "Line_L"
    Line_L.find_index(last_line_stop)-Line_L.find_index(first_line_stop)
  when "Line_6"
    Line_6.find_index(last_line_stop)-Line_6.find_index(first_line_stop)
end
#Make hash of the train lines
# map = Hash.new
# map = {:_N => Line_N, :_L => Line_L, :_6 => Line_6}
# print map

#figure out how to locate the stops

