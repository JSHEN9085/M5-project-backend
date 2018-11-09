class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password_digest
      t.string :large_picture
      t.string :medium_picture
      t.string :small_picture

      t.timestamps
    end
  end
end
