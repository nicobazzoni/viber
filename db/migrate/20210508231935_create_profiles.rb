class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :photo
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
