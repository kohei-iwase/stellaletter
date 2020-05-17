class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
	    t.string  :name, default: ""
        t.string  :image_id

      t.timestamps
    end

        add_index :likes, :name
  end
end
