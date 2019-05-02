class AddAddressToZoos < ActiveRecord::Migration[5.2]
  def change
    add_column :zoos, :address, :string
  end
end
