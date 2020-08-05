class CreateVendors < ActiveRecord::Migration[6.0]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.text :description
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
