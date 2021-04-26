class CreateOracles < ActiveRecord::Migration[6.1]
  def change
    create_table :oracles do |t|
      t.string :wisdom
      t.string :bravery
      t.string :compassion
      t.string :envy
      t.string :wrath
      t.string :sloth
      t.string :despair

      t.timestamps
    end
  end
end
