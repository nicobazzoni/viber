class RemoveBraveryFromOracle < ActiveRecord::Migration[6.1]
  def change
    remove_column :oracles, :bravery, :string
  end
end
