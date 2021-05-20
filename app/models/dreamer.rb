class Dreamer < ApplicationRecord
  has_many :dreamcatchers
  has_many :dreams, through: :dreamcatchers
  
end
