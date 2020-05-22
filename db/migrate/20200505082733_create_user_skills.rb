class CreateUserSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :user_skills do |t|
    	t.string :name, default: ""
    	t.string :text
        t.string  :image_id

      t.timestamps
    end
      add_index :user_skills, :name, unique: true
  end
end
