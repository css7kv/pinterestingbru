class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title
      t.string :caption

      t.timestamps null: false
    end
  end
end
