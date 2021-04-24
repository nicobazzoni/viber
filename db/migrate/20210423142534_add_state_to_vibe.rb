class AddStateToVibe < ActiveRecord::Migration[6.1]
  def change
    add_column :vibes, :state, :string
  end
end
