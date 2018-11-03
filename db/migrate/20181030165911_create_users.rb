class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password
      t.string :large_picture
      t.string :medium_picture
      t.string :small_picture
      t.string :city_location
      t.string :state_location

      t.timestamps
    end
  end
end
