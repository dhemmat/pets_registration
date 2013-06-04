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

require 'spec_helper'

describe Pet do
  before { @pet = Pet.new(name: "Example Pet", age: "3") }
  subject { @pet }

  it { should respond_to(:name) } 
  it { should respond_to(:age) }

end
