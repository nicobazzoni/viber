class Enemy < ApplicationRecord
  belongs_to :user
  has_many :grudges
end
