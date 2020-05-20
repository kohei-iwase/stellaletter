class CreatePartnerships < ActiveRecord::Migration[5.2]
  def change
    create_table :partnerships do |t|
      t.integer :follower_id, null: false
      t.integer :followed_id, null: false
      t.boolean :match,null: false, default: false
      t.text	:message
      t.timestamps
    end

    add_index :partnerships, :follower_id, unique: true
    add_index :partnerships, :followed_id
    add_index :partnerships, [:followed_id, :follower_id], unique: true
    add_index :partnerships, :match

  end
end
