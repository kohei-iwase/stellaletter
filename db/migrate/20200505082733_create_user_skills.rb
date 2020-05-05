class CreateUserSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :user_skills do |t|
    	t.string :name
    	t.string :text

      t.timestamps
    end
      add_index :user_skills, :name
  end
end
