class CreateDreamcatchers < ActiveRecord::Migration[6.1]
  def change
    create_table :dreamcatchers do |t|
      t.references :dream, null: false, foreign_key: true
      t.references :dreamer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
