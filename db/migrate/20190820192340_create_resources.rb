class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :url
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
