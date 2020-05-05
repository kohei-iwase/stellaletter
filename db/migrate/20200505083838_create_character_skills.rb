class CreateCharacterSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :character_skills do |t|
    	t.string :name
    	t.string :text

      t.timestamps
    end
      add_index :character_skills, :name
  end
end
