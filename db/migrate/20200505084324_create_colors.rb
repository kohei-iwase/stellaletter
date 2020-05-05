class CreateColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colors do |t|
      t.string	:name, 			null: false
      t.string	:text

      t.timestamps
    end
    add_index :colors, :name

  end
end
