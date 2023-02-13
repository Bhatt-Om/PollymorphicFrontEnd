class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.text :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :country
      t.string :telephone
      t.string :address_type
      t.integer :user_id

      t.timestamps
    end
  end
end
