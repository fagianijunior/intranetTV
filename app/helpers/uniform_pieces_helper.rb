module UniformPiecesHelper
  def gender(gender)
    case gender
      when 'M'
        'Masculino'
      when 'F'
        'Feminino'
    end
  end
end
