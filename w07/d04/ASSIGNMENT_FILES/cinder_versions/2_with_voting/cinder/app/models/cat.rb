class Cat < ActiveRecord::Base
  attr_accessible :age, :image_url, :name, :tag_line, :score

  def upvote!
    self.score += 1
    self.save
  end

  def downvote!
    self.score -= 1
    self.save
  end

end
