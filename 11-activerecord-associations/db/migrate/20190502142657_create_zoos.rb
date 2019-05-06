class CreateZoos < ActiveRecord::Migration[5.2]
  def change
    create_table :zoos do |table|
      table.string :name
      table.string :location
    end
  end
end
