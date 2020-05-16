class CreateSystems < ActiveRecord::Migration[5.2]
  def change
    create_table :systems do |t|
      t.string  :image_id
      t.string  :title, null: false, default: ""
      t.text	:text
      t.boolean :official

      t.timestamps
    end
    add_index :systems, :title
    add_index :systems, :official
  end
end
