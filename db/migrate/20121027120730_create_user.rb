class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.date :birthday
      t.string :password_digest

      t.timestamps
    end
    add_index :users, [:username, :email]
  end
end
