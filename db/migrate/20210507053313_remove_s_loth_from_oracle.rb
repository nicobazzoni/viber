class RemoveSLothFromOracle < ActiveRecord::Migration[6.1]
  def change
    remove_column :oracles, :sloth, :string
  end
end
