class AddNameToClubs < ActiveRecord::Migration[6.1]
  def change
    add_column :clubs, :name, :string
  end
end
