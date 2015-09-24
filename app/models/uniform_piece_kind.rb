class UniformPieceKind < ActiveRecord::Base
  validates :name, presence: true
end
