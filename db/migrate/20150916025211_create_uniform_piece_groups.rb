class CreateUniformPieceGroups < ActiveRecord::Migration
  def change
    create_table :uniform_piece_groups do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
