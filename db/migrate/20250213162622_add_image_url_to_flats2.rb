class AddImageUrlToFlats2 < ActiveRecord::Migration[8.0]
  def change
    add_column :flats, :image_url, :string
  end
end
