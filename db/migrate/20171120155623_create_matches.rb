class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.time :date
      t.integer :Match1
      t.integer :Match2

      t.timestamps
    end
  end
end
