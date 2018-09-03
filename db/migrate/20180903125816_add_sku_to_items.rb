class AddSkuToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :sku, :string
  end
end
