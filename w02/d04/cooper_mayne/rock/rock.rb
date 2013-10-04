class Rock
  OPTIONS = ['rock','paper','sissors']
  def play(choice)
    ai_choice = rand(0..2)
    pl_choice = OPTIONS.index choice
    return false if choice.nil?
    diff = (ai_choice - pl_choice).abs
    result = case diff
    when 0
      'its a tie'
    when 1
      ai_choice > pl_choice ? 'you lost' : 'you won'
    when 2
      ai_choice < pl_choice ? 'you lost' : 'you won'
    end
    result
  end
end
