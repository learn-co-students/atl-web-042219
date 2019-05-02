class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |table|
      table.string :name
      table.string :species
      table.integer :weight
      table.string :image_url
      table.integer :zoo_id
    end
  end
end
