class Grudge < ApplicationRecord
  has_many :users, through: :enemies
  belongs_to :enemy, optional:false
  accepts_nested_attributes_for :enemy, reject_if: proc { |attributes| attributes['name'].blank? }

  validates  :enemies, :enemy_id, presence: true
  
  def enemy_attributes=(enemy_attributes)
    enemy_attributes.values.each do |enemy_attribute|
      enemy = Enemy.find_or_create_by(enemy_attributes)
      self.enemies << enemy
    end
  end
end
