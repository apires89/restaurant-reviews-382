class AddPhoneToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :phone, :string
  end
end
