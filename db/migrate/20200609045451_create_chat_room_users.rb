class CreateChatRoomUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_room_users do |t|
      t.integer :chat_room_id, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
