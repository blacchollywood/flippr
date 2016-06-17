class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :description
      t.integer :price
      t.string :address

      t.timestamps null: false
    end
  end
end
