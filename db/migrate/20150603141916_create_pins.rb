class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title
      t.string :caption
      t.attachment :image

      t.timestamps null: false
    end
  end
end
