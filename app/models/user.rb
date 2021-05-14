class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, :omniauth_providers => [:google_oauth2]
         has_many :vibes,  dependent: :destroy
         has_many :messages, dependent: :destroy
         has_many :auras, :class_name => "Vibe", :foreign_key => "User_id", dependent: :destroy
         has_many :states, :class_name => "Vibe", :foreign_key => "User_id", dependent: :destroy
         has_many :details, :class_name => "Vibe", :foreign_key => "User_id", dependent: :destroy
         has_many :memberships
         has_many :clubs, through: :memberships
        
         def self.from_omniauth(auth)
          where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
          user.email = auth.info.email
          user.password = Devise.friendly_token[0,20]
        end      
      end


      
         
    
    

     
  validates :being, inclusion: { in: ['Positive ','negative', 'indifferent ' ] }
  BEING_OPTIONS = ["positive", " negative ","indifferent"]

  def self.search(search)
    
    if search
      User.where(' email LIKE :query', query: "%#{search}%")
     
    else
    unscoped
    end
  end
  
  
end
        
        
       
      
    
