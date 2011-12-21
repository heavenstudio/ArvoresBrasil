class Produto < ActiveRecord::Base
  belongs_to :produto_tipo

  has_many :arvore_parte_produtos
  has_many :arvores, :through => :arvore_parte_produtos
  has_many :partes, :through => :arvore_parte_produtos

end
