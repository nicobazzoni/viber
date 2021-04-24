class CreateVibes < ActiveRecord::Migration[6.1]
  def change
    create_table :vibes do |t|
      t.string :name
      t.text :details

      t.timestamps
    end
  end
end
