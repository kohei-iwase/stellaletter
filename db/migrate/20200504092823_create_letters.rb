class CreateLetters < ActiveRecord::Migration[5.2]
  def change
    create_table :letters do |t|
      t.integer :from_id, 	null: false
      t.integer :to_id,		null: false
      t.string	:title,		null: false
      t.text	:message

      t.timestamps
    end

    add_index :letters, :from_id
    add_index :letters, :to_id
    add_index :letters, :title


  end
end
