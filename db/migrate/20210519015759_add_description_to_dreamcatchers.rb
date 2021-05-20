class AddDescriptionToDreamcatchers < ActiveRecord::Migration[6.1]
  def change
    add_column :dreamcatchers, :description, :text
  end
end
