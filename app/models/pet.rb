class Pet < ActiveRecord::Base
  belongs_to :owner
  belongs_to :pet_type
  attr_accessible :age, :name
end
