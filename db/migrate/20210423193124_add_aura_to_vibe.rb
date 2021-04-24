class AddAuraToVibe < ActiveRecord::Migration[6.1]
  def change
    add_column :vibes, :aura, :string
  end
end
