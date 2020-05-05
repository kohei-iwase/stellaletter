class CreateRomanceStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :romance_styles do |t|
 		t.string  :name

      t.timestamps
    end

        add_index :romance_styles, :name
  end
end