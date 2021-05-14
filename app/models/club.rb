class Club < ApplicationRecord
  has_many :memberships
  has_many :avatars, through: :memberships

  validates :avatars, :avatar_attributes, presence: true

  belongs_to :user
  accepts_nested_attributes_for :avatars
  has_many :avatar_attributes, class_name: 'Avatar'
  
  def avatar_attributes=(avatar_attributes)
    avatar_attributes.values.each do |avatar_attribute|
      avatar = Avatar.find_or_create_by(avatar_attributes)
      self.avatars << avatar
    end
  end
end
