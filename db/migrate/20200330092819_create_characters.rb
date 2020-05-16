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
        t.string    :birthday
        t.string    :personality
        t.string    :weakness
        t.string    :strength
        t.string    :from
        t.integer   :bload_type
    	t.text		:profile
    	t.text		:comment

      t.timestamps
    end

        add_index :characters, :user_id
        add_index :characters, :name
        add_index :characters, :nickname

  end
end
