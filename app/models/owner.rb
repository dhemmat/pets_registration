# == Schema Information
#
# Table name: owners
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  phone      :string(255)
#  email      :string(255)
#  address    :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Owner < ActiveRecord::Base
  attr_accessible :id, :address, :email, :name, :phone
end
