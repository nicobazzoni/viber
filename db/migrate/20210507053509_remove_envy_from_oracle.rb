class RemoveEnvyFromOracle < ActiveRecord::Migration[6.1]
  def change
    remove_column :oracles, :envy, :string
  end
end
