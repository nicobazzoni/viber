class ImageElement < ApplicationRecord
  belongs_to :user
 has_many :states, source: :vibes 
end
