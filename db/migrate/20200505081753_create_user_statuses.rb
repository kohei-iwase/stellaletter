class CreateUserStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_statuses do |t|
    	t.integer :user_id
    	t.text    :introduction
    	t.integer  :user_skill_id
    	t.integer  :like_id
    	t.integer  :dislike_id
    	t.integer  :system_id
    	t.integer  :romance_style_id
    	t.integer  :playing_style_id
    	t.integer  :session_style_id
    	t.integer  :url

      t.timestamps
    end
        add_index :user_statuses, :user_id
        add_index :user_statuses, :user_skill_id
        add_index :user_statuses, :like_id
        add_index :user_statuses, :dislike_id
        add_index :user_statuses, :system_id
        add_index :user_statuses, :romance_style_id
        add_index :user_statuses, :playing_style_id
        add_index :user_statuses, :session_style_id

  end
end
