module UniformPiecesHelper
  def gender(gender)
    case gender
      when 'M'
        'Masculino'
      when 'F'
        'Feminino'
      when 'U'
        'Unisex'
    end
  end
end
