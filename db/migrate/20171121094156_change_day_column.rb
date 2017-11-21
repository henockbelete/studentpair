class ChangeDayColumn < ActiveRecord::Migration[5.1]
  def change
    change_column :matches, :day, :string
  end
end
