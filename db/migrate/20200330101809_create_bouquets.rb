class CreateBouquets < ActiveRecord::Migration[5.2]
  def change
    create_table :bouquets do |t|
    	t.integer	:user_id,       null: false
    	t.integer	:character_id,  null: false


      t.timestamps
    end

    add_index :bouquets, :user_id
    add_index :bouquets, :charcter_id
    add_index :bouquets, [:user_id, :character_id], unique: true
  end
end
