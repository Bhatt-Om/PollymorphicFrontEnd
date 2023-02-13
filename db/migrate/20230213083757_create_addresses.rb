class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.text :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :country
      t.string :telephone
      t.references :addressable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
