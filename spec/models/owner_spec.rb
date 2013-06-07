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
  before { @owner = Owner.new(name: "Example Owner", email: "owner@example.com", address: "test test test test", phone:"8092414463") }
  subject { @owner }

  it { should respond_to(:name) } 
  it { should respond_to(:email) }
  it { should respond_to(:address) }
  it { should respond_to(:phone) }
  it { should be_valid }

  describe "when name is not present" do
  	before { @owner.name = "" }
  	it { should_not be_valid }
  end
  
  describe "email is not present" do
  	before { @owner.email = "" }
  	it { should_not be_valid }
  end
  
  describe "when phone is not present" do
  	before { @owner.phone = "" }
  	it { should_not be_valid }
  end
  
  describe "when home address is not present" do
  	before { @owner.address = "" }
  	it { should_not be_valid }
  end
  
  describe "when name is too long" do
  	before { @owner.name = "a" * 51 }
  	it { should_not be_valid }
  end
  
  describe "when home address is too long" do
  	before { @owner.address = "a" * 301 }
  	it { should_not be_valid }
  end
  
  describe "when email format is invalid" do
  	it "should return invalid" do
  	  addresses = %w[user@foo,com user_at_foo.org example.user@foo.foo@bar_baz.com foo@bar+baz.com]
	  addresses.each do |invalid_address|
        @owner.email = invalid_address
        @owner.should_not be_valid
      end
  	end
  end
  
  describe "when email format is valid" do
	it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @owner.email = valid_address
        @owner.should be_valid
      end
    end
  end

 describe "when phone format is invalid" do
  	it "should return invalid" do
  	  phones = %w[8asf84f48 55555asd5555 5454a44]
	  phones.each do |invalid_phone|
        @owner.phone = invalid_phone
        @owner.should_not be_valid
      end
  	end
  end

  describe "when phone format is valid" do
	it "should be valid" do
      phones = %w[(809)241-4463 809-241-4463 8092414463]
      phones.each do |valid_phone|
        @owner.phone = valid_phone
        @owner.should be_valid
      end
    end
  end
end
