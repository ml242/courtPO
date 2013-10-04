class User

	attr_accessor :type
	attr_reader :enemy, :wins, :losses

	def initialize
		@enemies = ["rock", "paper", "scissor"]
		@wins = 0
		@losses = 0
	end

	def determine_outcome(choice)
		@type = choice
		@enemy = @enemies.sample
		case @type.downcase
		when "rock"
			case @enemy
			when "rock"
				return "tie"
			when "paper"
				@losses += 1
				return "lose"
			when "scissor"
				@wins += 1
				return "win"
			end
		when "paper"
			case @enemy
			when "rock"
				@wins += 1
				return "win"
			when "paper"
				return "tie"
			when "scissor"
				@losses += 1
				return "lose"
			end
		when "scissor"
			case @enemy
			when "rock"
				@losses += 1
				return "lose"
			when "paper"
				@wins += 1
				return "win"
			when "scissor"
				return "tie"
			end
		end
	end

end