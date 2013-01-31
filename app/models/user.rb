class User < ActiveRecord::Base
  attr_accessible :active, :first_name, :last_name, :password, :password_confirmation, :username

  has_many :journals

  def full_name
    "#{first_name} #{last_name}"
  end
end
