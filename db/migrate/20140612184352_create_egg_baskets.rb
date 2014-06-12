class CreateEggBaskets < ActiveRecord::Migration
  def change
    create_table :egg_baskets do |t|
      t.decimal :egg_count
      t.references :user, index: true

      t.timestamps
    end
  end
end
