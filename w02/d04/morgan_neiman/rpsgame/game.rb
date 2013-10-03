def game(input1, input2)
  if input1 == input2
    outcome = "It's a tie!"
  if input1 == "rock"
    if input2 == "paper"
      outcome = "Paper covers rock. You lose!"
    elsif input2 == "scissors"
      outcome = "Rock smashes scissors. You win!"
    end
  elsif input1 == "paper"
    if input2 == "scissors"
      outcome = "Scissors cuts paper. You lose!"
    elsif input2 == "rock"
      outcome = "Paper covers rock. You win!"
    end
  elsif input1 == "scissors"
    if input2 == "rock"
      outcome = "Rock smashes scissors. You lose!"
    elsif input2 == "paper"
      outcome = "Scissors cut paper. You win!"
    end
  end
  return outcome
end