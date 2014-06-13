class AddDateFieldsToEggBasketsAndClutches < ActiveRecord::Migration
  def change
    add_column :egg_baskets, :collected_on, :date
    add_column :egg_clutches, :collected_on, :date
  end
end
