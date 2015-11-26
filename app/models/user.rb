class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  #validates :name, presence: true, uniqueness: true


  def email_required?
      false
  end

  def password_required?
      false
  end


#  def self.find_for_oauth_twitter(auth)
#      user = User.where(provider: auth.provider, uid: auth.uid).first
#
#      unless user
#        user = User.create( name:     auth.info.name,
#                            password: Devise.friendly_token[0,20] )
#      end
#
#      return user
#  end

#  def self.from_omniauth_twitter(auth)
#    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
#      user.email    = auth.info.email
#      user.password = Devise.friendly_token[0,20]
#      #user.name     = auth.info.nickname   
#      #user.image = auth.info.image
#    end
#  end
end
