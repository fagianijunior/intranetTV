class AddGenderToUniformPiece < ActiveRecord::Migration
  def change
    add_column :uniform_pieces, :gender, :string
  end
end
