class RemoveDespairFromOracle < ActiveRecord::Migration[6.1]
  def change
    remove_column :oracles, :despair, :string
  end
end
