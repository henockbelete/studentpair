class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :matches, :date, :day
  end
end
