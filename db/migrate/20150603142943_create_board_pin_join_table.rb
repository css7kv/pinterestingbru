class CreateBoardPinJoinTable < ActiveRecord::Migration
  def change
    create_join_table :pins, :boards do |t|
      t.index [:pin_id, :board_id]
      # t.index [:board_id, :pin_id]
    end
  end
end
