class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.float :est_value
      t.float :acc_value
      t.date :purchase_date
      t.boolean :selling
      t.text :description
      t.string :category
      t.belongs_to :users 
      t.belongs_to :vendors 
      
      t.timestamps
    end
  end
end
