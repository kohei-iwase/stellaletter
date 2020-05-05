class CreateSessionStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :session_styles do |t|

    	t.string :name, null: false, default: ""

      t.timestamps
    end

    add_index :session_styles, :name
  end
end
