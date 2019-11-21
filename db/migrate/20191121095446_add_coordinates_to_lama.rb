class AddCoordinatesToLama < ActiveRecord::Migration[5.2]
  def change
    add_column :lamas, :latitude, :float
    add_column :lamas, :longitude, :float
  end
end
