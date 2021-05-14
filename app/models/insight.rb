class Insight < ApplicationRecord
  belongs_to :vibes
  belongs_to :user
  has_many :users, through: :vibes
end
