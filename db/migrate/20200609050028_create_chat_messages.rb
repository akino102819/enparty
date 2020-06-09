class CreateChatMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_messages do |t|
      t.integer :chat_room_id, null:false
      t.references :user, foreign_key: true
      t.string :message, null: false
      t.timestamps
    end
  end
end
