class User < ActiveRecord::Base
  attr_accessible :email, :password

  has_many :purchases
  has_many :songs, through :purchases
end