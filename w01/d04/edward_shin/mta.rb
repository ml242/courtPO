#Create hash for N train
n_train = {
	"TimeSquare-N" => 1, 
	"34th street-N" => 2, 
	"28th street -N" => 3, 
	"23rd street -N" => 4, 
	"Union Sqaure -N" => 5, 
	"8th street -N" => 6
}


#list of methods
def ask(question)
	puts question
	gets.chomp!
end

def n_method(n_train)
	puts "I took the n train BITCH"
end






#ask user which train stop they got on
input = ask("What train did you take today?")


if input == "N train"
	n_method(n_train)
end
