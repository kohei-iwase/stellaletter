class CreatePlayingStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :playing_styles do |t|
    	t.string :name, null:false, default: ""

      t.timestamps
    end

    add_index :playing_styles, :name
  end
end
