class EditBusinessphoto < ActiveRecord::Migration[5.2]
  def change
    add_column :businesses, :photos, :text, array: true, default: []
    add_column :businesses, :lat, :float
    add_column :businesses, :lng, :float
  end
end
