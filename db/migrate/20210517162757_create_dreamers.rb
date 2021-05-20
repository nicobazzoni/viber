class CreateDreamers < ActiveRecord::Migration[6.1]
  def change
    create_table :dreamers do |t|
      t.string :name

      t.timestamps
    end
  end
end
