class CreateEggClutches < ActiveRecord::Migration
  def change
    create_table :egg_clutches do |t|
      t.decimal :count
      t.references :egg_basket, index: true

      t.timestamps
    end
  end
end
