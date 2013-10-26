# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#


# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation

  has_secure_password
  has_many :comments
  has_many :favorites
  has_many :pieces, :through => :comments
  has_many :pieces, :through => :favorites

  validates :email, uniqueness: true, presence: true, length: { minimum: 4 }
  validates :password, :password_confirmation, presence: true, length: { in: 6..20 }
end
