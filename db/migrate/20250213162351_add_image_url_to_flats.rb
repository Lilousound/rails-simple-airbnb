class AddImageUrlToFlats < ActiveRecord::Migration[8.0]
  def change
    add_column :image_url, :string
  end
end
