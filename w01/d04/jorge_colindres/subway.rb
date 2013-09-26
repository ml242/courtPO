
def ask(question)
  puts question
  gets.chomp
end


def riding_n_line

end

def riding_l_line

end

def riding_six_line

end

# Define the N Line with stops at Times SQ, 34, 28, 23, Union SQ, 8
# Define the L Line with stops at 8, 6, Union SQ, 3, 1
# Define the 6 line with stops at Grand Central, 33, 28, 23, Union SQ, Astor PL
subway_system = {
  :n_line => [
    "Times Square",
    "34",
    "28",
    "23",
    "Union Square",
    "8"
  ],
  :l_line => [
    "8",
    "6",
    "Union Square",
    "3",
    "1"
  ],
  :six_line => [
    "Grand Central",
    "33",
    "28",
    "23",
    "Union Square",
    "Astor Place"
  ]
}



# Ask user what line they're taking

CHOOSE_LINES_PROMPT = "
  WELCOME TO THE SUBWAY SYSTEM!

  What line do you want to take?
    > Enter 1 for the N Line
    > Enter 2 for the L Line
    > Enter 3 for the 6 Line
    > Enter Q to leave the Subway
"

selected_subway_line = ask("CHOOSE_LINES_PROMPT")

if selected_subway_line == "1"
 puts "You're riding the N Line"
elsif selected_subway_line == "2"
  puts "You're riding the L Line"
elsif selected_subway_line == "3"
  puts "You're riding the 6 Line"
elsif selected_subway_line.upcase == "Q"
  puts "Good Bye!"
else
  puts "error"
end

# if subway_system.has_key?

# Ask user where they'r going

# Ask user where they want to stop

# Puts total number of stops

