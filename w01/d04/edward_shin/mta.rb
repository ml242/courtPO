#Create hash for N train
n_train = {
	"TimeSquare-N" => 1, 
	"34th street-N" => 2, 
	"28th street -N" => 3, 
	"23rd street -N" => 4, 
	"Union Sqaure -N" => 5, 
	"8th street -N" => 6
}
#questions

train = "What train did you take today?"
train_enter = "What stop did you get on?"
train_exit = "Which stop did you get off?"

#list of methods
def ask(question)
	puts question
	gets.chomp!
end

def n_method(n_train)
	entrance = ask(train_enter)
	train_ex = ask(train_exit)
	puts "#{n_train[entrance]} was the entrance and #{n_train[train_ex] was the exit}"
end






#ask user which train stop they got on
input = ask(train)


if input == "N train"
	n_method(n_train)
end
