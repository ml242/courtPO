INSTRUCTIONS = "
If you want to signup for Train helper, type:
> signup

If you want to login, to Train helper type:
> login

If you want to quit
> quit
"

====begin
N Line: Times Square, 34th, 28th, 23rd, Union Square, 8th
The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.

All 3 subway lines intersect at Union Square, but there are NO other intersection points.
For example, this means the 28th stop on the N line is different than the 28th street stop
on the 6 line, so you'll have to differentiate this when you name your stops in the arrays.
(example: "28th-s" for 6 line and "28th-n" for n line)

The program takes the line and stop that a user is getting on at and the line and stop that user
is getting off at and prints the total number of stops for the trip.



 # The program takes the line and stop that a user is getting on at and the line and stop that user
 # is getting off at and prints the total number of stops for the trip.

#  Make subway lines keys in a hash, while the values are an array of all the stops on each line.
# The keys to your hash should be symbols. Keep in mind that symbols cannot begin with a number.
# The key to the lab is the intersection of the lines at Union Square. Google "ruby array intersect."
# Make sure the stops that are the same for different lines have different names (i.e. 23rd on the N and on the 6 need to be differentiated)


#Ask(method)
#Where are you leaving from? (gets info + converts it to place in array with index)
#Where are you going to? (gets info + converts it to place in array with index)
#Always subtract the smaller number from the larger number to get the number of stops

#array = ["A", "B", "C"]
# array.each_with_index {|val, index| puts "#{val} => #{index}" }

====end

nline = ["times_square", "34street", "28street", "23rdstreet", "union_square", "astorplace"]

nline => nlineHash{}

def ask(string)
  puts string
  gets.chomp
end

def signup(input_db)
  username = ask("What is the username you want to be able to signin with?")
  password = ask("What do you want your password to be?")

  user_info = Hash.new
  user_info[:username] = username
  user_info[:password] = password
  input_db[username] = user_info
end

def login(users_db)
  username = ask("What is your username?")
  supposed_password = ask("What is your password?")

  user_info = users_db[username]
  username = user_info[:username]
  actual_password = user_info[:password]

  if supposed_password == actual_password
    message = "Welcome #{username}!"
  else
    message = "ERROR: Invalid password!"
  end

  puts message
end

users_db = Hash.new

