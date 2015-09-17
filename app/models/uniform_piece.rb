class UniformPiece < ActiveRecord::Base
  belongs_to :uniform_piece_kind
  belongs_to :uniform_piece_group
  belongs_to :employer

  attr_accessor :amount

  validates :amount, :entry, :uniform_piece_kind, :uniform_piece_group, :color, presence: true
end
