class CreateInsights < ActiveRecord::Migration[6.1]
  def change
    create_table :insights do |t|
      t.string :name
      t.string :description
      t.references :vibes, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
