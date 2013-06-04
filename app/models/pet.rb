# == Schema Information
#
# Table name: pets
#
#  id          :integer         not null, primary key
#  owner_id    :integer
#  name        :string(255)
#  age         :string(255)
#  pet_type_id :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Pet < ActiveRecord::Base
  belongs_to :owner
  belongs_to :pet_type
  attr_accessible :age, :name
end
