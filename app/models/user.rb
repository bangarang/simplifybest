class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role_ids
  # attr_accessible :title, :body

  validates :email, :uniqueness => true
end


# user = User.new(:email => "alex@simplifybest.com", :password => "R3dnax3la", :password_confirmation => "R3dnax3la", :remember_me => "", :role_ids => "")