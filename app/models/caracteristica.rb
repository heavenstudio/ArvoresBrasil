class Caracteristica < ActiveRecord::Base
  belongs_to :caracteristica_tipo

  has_many :arvore_parte_caracteristicas
  has_many :arvores, :through => :arvore_parte_caracteristicas
  #has_many :partes, :through => :arvore_parte_caracteristicas

end
