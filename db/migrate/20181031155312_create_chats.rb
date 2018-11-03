class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.string :topic
      t.integer :creator_id

      t.timestamps
    end
  end
end
