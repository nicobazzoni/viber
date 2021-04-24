class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :vibes

         validates :being, inclusion: { in: ['whatevs', 'hurting', 'vibing', ] }

         BEING_OPTIONS = [
           ['Whateves', 'whatevs'],
           ['Hurting', 'hurting'],
           ['Vibing', 'vibing']
  
         ]
end
