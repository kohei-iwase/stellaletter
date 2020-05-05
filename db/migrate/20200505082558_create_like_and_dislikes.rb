class CreateLikeAndDislikes < ActiveRecord::Migration[5.2]
  def change
    create_table :like_and_dislikes do |t|
	    t.string  :name, default: ""
        t.string  :image_id

      t.timestamps
    end

        add_index :like_and_dislikes, :name
  end
end
