class Dreamer < ApplicationRecord
  has_many :dreamcatchers
  has_many :dreams, through: :dreamcatchers
  accepts_nested_attributes_for :dreamcatcher
end
