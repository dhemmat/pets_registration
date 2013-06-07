# == Schema Information
#
# Table name: pet_types
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'spec_helper'

describe PetType do
  before { @pet_type = PetType.new(name: "Bird") }
  subject { @pet_type }

  it { should respond_to(:name) } 
  it { should be_valid }
end
