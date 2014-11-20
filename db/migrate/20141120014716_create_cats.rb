class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.string :image
      t.integer :age
      t.string :colour
      t.decimal :price
      t.date :rescue_date

      t.timestamps
    end
  end
end
