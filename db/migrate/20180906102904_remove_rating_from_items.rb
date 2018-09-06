class RemoveRatingFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :rating
  end
end
