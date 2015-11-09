class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # :recoverable :registerable,
  devise :database_authenticatable,
         :rememberable, :trackable, :validatable
end
