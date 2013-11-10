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

  attr_accessible :name, :email, :twitter, :num_cases, :num_best_solutions, :score_total, :password, :password_confirmation

  has_secure_password
  has_many :solutions
  has_many :cases

  validates :email, uniqueness: true, presence: true, length: { minimum: 4 }
  validates :password, :password_confirmation, presence: true, length: { in: 6..20 }

end
