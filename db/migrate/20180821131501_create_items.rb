class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.integer :price
      t.string :image_url
      t.string :title
      t.string :description
      t.integer :rating
      t.string :location
      t.timestamps
    end
  end
end
