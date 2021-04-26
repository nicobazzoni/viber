class Oracle < ApplicationRecord
  has_many  :vibes
  has_many  :users, through: :vibes 
end
