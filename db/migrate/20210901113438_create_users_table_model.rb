class CreateUsersTableModel < ActiveRecord::Migration[6.1]
  def change
    create_table :users_table_models do |t|
      t.string :username
      t.string :email
      
      t.timestamps
    end
  end
end
