def game(input1, input2)
  if input1 == input2
    outcome = "It's a tie!"
  elsif input1 == "rock"
    if input2 == "paper"
      outcome = "Paper covers rock. Player 1 loses!"
    elsif input2 == "scissors"
      outcome = "Rock smashes scissors. Player 1 wins!"
    end
  elsif input1 == "paper"
    if input2 == "scissors"
      outcome = "Scissors cuts paper. Player 1 loses!"
    elsif input2 == "rock"
      outcome = "Paper covers rock. Player 1 wins!"
    end
  elsif input1 == "scissors"
    if input2 == "rock"
      outcome = "Rock smashes scissors. Player 1 loses!"
    elsif input2 == "paper"
      outcome = "Scissors cut paper. Player 1 winss!"
    end
  end
  return outcome
end