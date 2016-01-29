class SorceryCore < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :username
      t.string :email            
      t.string :crypted_password
      t.string :salt    

      t.timestamps
    end

    add_index :authors, :email, unique: true
  end
end