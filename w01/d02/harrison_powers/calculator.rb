class String
  def calculate
    [:+, :-, :*, :/, :**].each do |op|
      factors = self.split(op.to_s)
      return factors.map(&:calculate).inject(op) if factors.size > 1
    end
    to_f # No calculation needed
  end
  alias calc calculate
end

include Math

entry = "0"
counter = 0
while entry != "q"
	%x(say "welcome to the ruby calculator") if counter < 1
	puts "welcome to the ruby calculator" if counter < 1
	puts "lets do some more..." if counter >= 1
	counter += 1
	puts
	puts "press 1 to see a menu of advanced calculations"
	puts "press 2 to skip ahead to the basic calculator"
	puts "press q to quit"
	puts
	entry = gets.chomp
	if entry == "1"
		puts
		puts
		puts "I will allow you to square a number or take the square root."
		puts
		puts "Which would you prefer?"
		puts
		puts "1 - Square"
		puts "2 - Square Root"
		%x(say "square or square root")
		entry = gets.chomp
		if entry == "1"
			puts
			puts "What number would you like to square?"
			puts
			entry = gets.chomp
			answer = entry.to_i ** 2
			puts answer
			%x(say #{answer})
		elsif entry == "2"
			puts
			puts "What number would you like to take the square root of?"
			puts
			entry = gets.chomp
			answer = sqrt(entry.to_i)
			puts answer
			%x(say #{answer})
		else
			puts "R T F M"
			%x(say "R T F M")
		end
	elsif entry == "2"
		puts
		puts
		puts "what would you like to calculate?"
		%x(say "what would you like to calculate?")
		puts
		entry = gets.chomp
		answer = entry.calculate
		puts answer
		%x(say #{answer})
	elsif entry == "q"
		puts
		puts "peace homie"
		%x(say "hasta la vista baby")
	else
		puts "R T F M"
		%x(say "R T F M")
	end
	puts
	puts
end
