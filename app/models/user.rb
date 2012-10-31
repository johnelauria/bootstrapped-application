class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password
  validates :name, uniqueness: true, presence: true
  validates :email, :password, :password_confirmation, presence: true

  before_save :create_remember_token

  def create_remember_token
  	self.remember_token = SecureRandom.urlsafe_base64
  end
end
