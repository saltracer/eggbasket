class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :occurred_on
      t.references :egg_basket, index: true
      t.float :cost
      t.references :event_name, index: true

      t.timestamps
    end
  end
end
