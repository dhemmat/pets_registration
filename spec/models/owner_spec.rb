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

require 'spec_helper'

describe Owner do
  before { @owner = Owner.new(name: "Example Owner", email: "owner@example.com") }
  subject { @owner }

  it { should respond_to(:name) } 
  it { should respond_to(:email) }
  it { should respond_to(:address) }
  it { should respond_to(:phone) }

end
