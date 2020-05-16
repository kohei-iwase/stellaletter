class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string  :image_id
      t.integer :system_id
      t.string  :title, null: false, default: ""
      t.text	:text
      t.boolean :official

      t.timestamps
    end
    add_index :books, :title
    add_index :books, :official
    add_index :books, :system_id
  end
end
