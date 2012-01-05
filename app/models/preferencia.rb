class Preferencia < ActiveRecord::Base
  validates_presence_of :nome, :message => " - deve ser preenchido"
  validates_uniqueness_of :nome, :message => " - nome ja cadastrado"

  has_many :arvore_sucessoes
  has_many :arvores, :through => :arvore_sucessoes
  has_many :sucessoes, :through => :arvore_sucessoes


  has_many :arvore_condicoes
  has_many :arvores, :through => :arvore_condicoes
  has_many :condicoes, :through => :arvore_condicoes
end
