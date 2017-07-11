class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.column :price, :decimal
      t.column :name, :string
      t.column :description, :text
      

      t.timestamps
    end
  end
end
