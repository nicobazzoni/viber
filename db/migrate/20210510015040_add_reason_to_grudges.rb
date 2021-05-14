class AddReasonToGrudges < ActiveRecord::Migration[6.1]
  def change
    add_column :grudges, :reason, :string
  end
end
