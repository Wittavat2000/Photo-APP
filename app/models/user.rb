class User < ApplicationRecord
  has_many :images
  has_one :payment
  accepts_nested_attributes_for :payment
  
  extend Devise::Models #for undefined method 'devise' for User
  # Include default devise modules. Others available are:
  #:confirmable ,:lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable ,
         :recoverable, :rememberable, :validatable 
end
