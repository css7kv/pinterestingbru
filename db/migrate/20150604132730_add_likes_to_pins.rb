class AddLikesToPins < ActiveRecord::Migration
  def change
  	add_column :pins, :like, :int
  end
end
