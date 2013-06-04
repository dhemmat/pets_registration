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
  pending "add some examples to (or delete) #{__FILE__}"
end
