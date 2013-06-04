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
  before { @pet = Pet.new(name: "Example Pet", age: "3", pet_type_id: 3, owner_id: 1) }
  subject { @pet }

  it { should respond_to(:name) } 
  it { should respond_to(:age) }
  it { should respond_to(:pet_type_id)}
  it { should respond_to(:owner_id)}
  it { should be_valid }

  describe "when name is not present" do
  	before { @pet.name = "" }
  	it { should_not be_valid }
  end
  
  describe "when age is not present" do
  	before { @pet.age = "" }
  	it { should_not be_valid }
  end
  
  describe "when pet_type_id is not present" do
  	before { @pet.pet_type_id = "" }
  	it { should_not be_valid }
  end

  describe "when name is too long" do
  	before { @pet.name = "a" * 51 }
  	it { should_not be_valid }
  end

  describe "when age is too long" do
  	before { @pet.name = "a" * 51 }
  	it { should_not be_valid }
  end

end
