class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|

    	t.integer	:user_id	 ,null: false
    	t.string	:image_id
    	t.string 	:name        ,null: false, default: ""
    	t.string	:nickname
    	t.string 	:gender
    	t.string	:age
    	t.string	:race
    	t.text		:profile
    	t.text		:pr

      t.timestamps
    end

        add_index :characters, :user_id
        add_index :characters, :name
        add_index :characters, :nickname

  end
end
