class AddBeingToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :being, :string
  end
end
