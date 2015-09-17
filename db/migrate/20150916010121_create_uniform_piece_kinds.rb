class CreateUniformPieceKinds < ActiveRecord::Migration
  def change
    create_table :uniform_piece_kinds do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
