class AddLimitPriceToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :limit_price, :integer
  end
end
