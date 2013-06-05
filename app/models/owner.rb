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
  has_many :pets, :dependent => :destroy
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_REGEX = /^(\(\d{3}\)|\d{3})-?\d{3}-?\d{4}$/                   #/^[\d() -]+/


  validates :name, presence: true, length: { maximum:50 }
  validates :address, presence: true, length: { maximum:300 }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :phone, presence: true, format: { with: VALID_PHONE_REGEX }

end