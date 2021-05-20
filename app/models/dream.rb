class Dream < ApplicationRecord
  has_many :dreamcatchers
  has_many :dreamers, through: :dreamcatchers
  
  


  
end
