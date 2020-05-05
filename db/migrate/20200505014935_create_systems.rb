class CreateSystems < ActiveRecord::Migration[5.2]
  def change
    create_table :systems do |t|
      t.string  :image_id
      t.string  :name, null: false
      t.text    :text

      t.timestamps
    end
    add_index :systems, :name
  end
end
