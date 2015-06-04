class AddPublicToPins < ActiveRecord::Migration
  def change
    add_column :pins, :public, :boolean
  end
end
