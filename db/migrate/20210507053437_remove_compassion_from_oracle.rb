class RemoveCompassionFromOracle < ActiveRecord::Migration[6.1]
  def change
    remove_column :oracles, :compassion, :string
  end
end
