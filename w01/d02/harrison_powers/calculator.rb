class String
  def calculate
    [:+, :-, :*, :/].each do |op|
      factors = self.split(op.to_s)
      return factors.map(&:calculate).inject(op) if factors.size > 1
    end
    to_f # No calculation needed
  end
  alias calc calculate
end

entry = "0"

while entry != "q"
	puts "welcome to the ruby calculator"
	puts
	puts "press 1 to see a menu"
	puts "press 2 to skip ahead and calculate"
	puts "press q to quit"
	puts
	entry = gets.chomp
	if entry == "1"
		puts
		puts
		puts "this calcuator can handle basic arithmetic. addition, subtraction, division, and multiplication. have fun!"
		puts
		puts "what would you like to calculate?"
		puts
		entry = gets.chomp
		puts entry.calculate
	elsif entry == "2"
		puts
		puts
		puts "what would you like to calculate?"
		puts
		entry = gets.chomp
		puts entry.calculate
	elsif entry == "q"
		puts
		puts "peace homie"
	end
	puts
	puts
end
