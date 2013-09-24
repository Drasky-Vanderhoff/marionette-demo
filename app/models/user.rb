class User < ActiveRecord::Base
  has_many :posts

  attr_accessible :first_name, :last_name

  def full_name
    "#{first_name} #{last_name}"
  end
end
