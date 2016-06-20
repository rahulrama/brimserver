class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      # t.string :email, null: false, default: ''
      # t.string :password_digest, null: false, default: ''
      t.integer :id
      t.integer :access_token
      # t.string :display_name
      # t.string :facebook
      # t.string :google

      t.timestamps null: false
    end
    add_index :users, :id, unique: true
  end
end
