class AddPossibleMatchesInMatch < ActiveRecord::Migration[5.1]
  def change
    add_column :matches, :possible_matches, :integer, array: true, default: []

  end
end
