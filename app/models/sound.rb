# == Schema Information
#
# Table name: sounds
#
#  id          :integer          not null, primary key
#  sound       :text
#  title       :text
#  description :text
#  image       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Sound < ApplicationRecord
  has_and_belongs_to_many :tags
  belongs_to :user, optional: true
  belongs_to :tag, optional: true


  
end
