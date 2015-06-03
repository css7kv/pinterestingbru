class AddUrlToPins < ActiveRecord::Migration
  def change
    add_column :pins, :url, :string
  end
end
