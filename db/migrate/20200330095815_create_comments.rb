class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :user_id,		null: false
      t.integer :character_id,  null: false
      t.string	:image_id
      t.timestamps
    end

    add_index :comments, :user_id
    add_index :comments, :character_id
  end
end
