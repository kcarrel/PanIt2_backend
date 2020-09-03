class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.belongs_to :collection
      t.string :name
      t.string :brand
      t.string :product_type
      t.date :open_on
      t.date :expiration
      t.text :notes
      t.integer :rating
      t.boolean :favorite

      t.timestamps
    end
  end
end
