class AddClubIdToMemberships < ActiveRecord::Migration[6.1]
  def change
    add_reference :memberships, :club, null: false, foreign_key: true
  end
end
