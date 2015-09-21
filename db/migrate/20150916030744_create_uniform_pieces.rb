class CreateUniformPieces < ActiveRecord::Migration
  def change
    create_table :uniform_pieces do |t|
      t.date :entry
      t.date :delivered
      t.text :delivery_reason
      t.date :returned
      t.text :return_reason
      t.references :uniform_piece_size, index: true, foreign_key: true
      t.string :color
      t.references :uniform_piece_kind, index: true, foreign_key: true
      t.references :uniform_piece_group, index: true, foreign_key: true
      t.boolean :used
      t.references :employer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
