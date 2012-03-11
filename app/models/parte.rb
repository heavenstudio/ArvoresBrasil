class Parte < ActiveRecord::Base
  validates_presence_of :nome, :message => " - deve ser preenchido"
  validates_uniqueness_of :nome, :message => " - nome ja cadastrado"

  has_many :arvore_parte_caracteristicas
  has_many :arvores, :through => :arvore_parte_caracteristicas
  #has_many :caracteristicas, :through => :arvore_parte_caracteristicas


  #has_many :arvore_parte_produtos
  #has_many :arvores, :through => :arvore_parte_produtos
  #has_many :produtos, :through => :arvore_parte_produtos
  
  
end
