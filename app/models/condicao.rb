class Condicao < ActiveRecord::Base
  belongs_to :condicao_tipo

  has_many :arvore_condicoes
  has_many :arvores, :through => :arvore_condicoes
  has_many :preferencias, :through => :arvore_condicoes

end
