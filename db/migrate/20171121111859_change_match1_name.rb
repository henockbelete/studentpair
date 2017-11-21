class ChangeMatch1Name < ActiveRecord::Migration[5.1]
  def change
    rename_column :matches, :Match1, :match1
    rename_column :matches, :Match2, :match2
  end
end
