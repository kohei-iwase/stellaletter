class CreatePartners < ActiveRecord::Migration[5.2]
  def change
    create_table :partners do |t|
      t.integer :character_id
      t.integer :partner_id
      t.string	:partner_status
      t.boolean :is_active

      t.timestamps
    end

    add_index :partners, :character_id
    add_index :partners, :partner_id
    add_index :partners, [:character_id, :partner_id], unique: true
    add_index :partners, :is_active
  end
end
