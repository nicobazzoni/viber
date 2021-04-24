class AddFileToVibe < ActiveRecord::Migration[6.1]
  def change
    add_column :vibes, :file, :string
  end
end
