class CreateProperties < ActiveRecord::Migration[7.1]
  def change
    create_table :properties do |t|
      t.string :title
      t.boolean :rent
      t.float :price
      t.boolean :dollars
      t.references :commune, null: false, foreign_key: true
      t.string :address
      t.integer :area
      t.integer :rooms
      t.integer :bathrooms
      t.string :description
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
