class ChangeUserField < ActiveRecord::Migration[5.1]
  def change
    drop_table :users
    create_table :users do |t|
      t.string :username, null: false, unique: true
      t.timestamps
    end
    add_index :users, :username
  end

end
