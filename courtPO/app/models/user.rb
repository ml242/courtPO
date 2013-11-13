# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  email              :string(255)
#  twitter            :string(255)
#  password_digest    :string(255)
#  num_cases          :integer
#  num_best_solutions :integer
#  score_total        :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class User < ActiveRecord::Base

  attr_accessible :name, :email, :image, :twitter, :num_cases, :num_best_solutions, :score_total, :password, :password_confirmation, :uid

  # has_secure_password
  has_many :solutions
  has_many :cases

  # validates :email, uniqueness: true, presence: true, length: { minimum: 4 }
  # validates :password, :password_confirmation, presence: true, length: { in: 6..20 }

  def self.from_omniauth(auth)
     user = where(auth["uid"]).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      # user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
    end
  end


end
