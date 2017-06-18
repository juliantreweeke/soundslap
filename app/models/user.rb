# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :text
#  email      :text
#  website    :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :sounds
  has_secure_password
  validates :email, presence: true, uniqueness: true, length: {minimum: 5}
end
