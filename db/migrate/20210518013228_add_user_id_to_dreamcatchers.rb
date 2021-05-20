class AddUserIdToDreamcatchers < ActiveRecord::Migration[6.1]
  def change
    add_reference :dreamcatchers, :user, null: false, foreign_key: true
  end
end
