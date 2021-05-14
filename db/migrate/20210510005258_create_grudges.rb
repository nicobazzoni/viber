class CreateGrudges < ActiveRecord::Migration[6.1]
  def change
    create_table :grudges do |t|

      t.timestamps
    end
  end
end
