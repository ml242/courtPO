SUBWAY = {
	:N => ["T", "34", "28", "23", "U", "8"],
	:L => ["8", "6", "U", "3", "1"],
	:SIX => ["G", "33", "28", "23", "U", "A"]
}

MAIN_MENU = "
Which Subway line are you starting on?
(N)
(L)
(6)

(q)uit
"
MENU_N = "
Which stop?
(T)ime Square
(34)th Street
(28)th Street
(23)rd Street
(U)nion Square
(8)th Street
"
MENU_L = "
(8)th Avenue
(6)th Avenue
(U)nion Square
(3)rd Avenue
(1)st Avenue
"
MENU_SIX = "
(G)rand Central
(33)rd Street
(28)th Street
(23)rd Street
(U)nion Square
(A)stor Place
"

def calculate_stops
	SUBWAY[train_line.to_sym].index(first_stop)
end

def ask(question)
	puts question
	@user_input = gets.chomp
end

while true
	train_line = ask(MAIN_MENU).upcase
	break if @user_input.downcase == "q"
	first_stop = ask(MENU_N) if train_line == "N"
	first_stop = ask(MENU_L) if train_line == "L"
	first_stop = ask(MENU_SIX) if train_line == "6"
	last_stop = ask(MENU_N) if train_line == "N"
	last_stop = ask(MENU_L) if train_line == "L"
	last_stop = ask(MENU_SIX) if train_line == "6"
	rename_inputs
	puts calculate_stops
end