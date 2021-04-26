class AddUserIdToOracle < ActiveRecord::Migration[6.1]
  def change
    add_column :oracles, :User_id, :integer
  end
end
