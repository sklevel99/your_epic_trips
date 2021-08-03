class AddPriceToTrip < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :price, :float
  end
end
