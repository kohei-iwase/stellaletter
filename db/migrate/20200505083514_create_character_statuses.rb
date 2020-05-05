class CreateCharacterStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table  :character_statuses do |t|
    	t.integer :character_id, null: false
    	t.integer :character_skill_id
    	t.integer :flower_id
    	t.integer :color_id
    	t.integer :system_id

      t.timestamps
    end

        add_index :character_statuses, :character_id
        add_index :character_statuses, :character_skill_id
        add_index :character_statuses, :flower_id
        add_index :character_statuses, :color_id
        add_index :character_statuses, :system_id
  end
end
