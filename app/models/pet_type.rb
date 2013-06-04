# == Schema Information
#
# Table name: pet_types
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class PetType < ActiveRecord::Base
  attr_accessible :name, :id
  has_many :pets
end
