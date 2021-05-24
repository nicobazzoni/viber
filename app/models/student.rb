class Student < ApplicationRecord
  has_many :lessons
  has_many :guides, through: :lessons
  accepts_nested_attributes_for :lessons
  
  
end
