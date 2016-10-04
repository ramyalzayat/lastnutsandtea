class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :confirmable,:recoverable, :rememberable, :trackable, :validatable

has_one :profil
has_many :posts
has_and_belongs_to_many :roles
def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
end
end

