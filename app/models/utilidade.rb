class Utilidade < ActiveRecord::Base
  belongs_to :utilidade_tipo

  has_many :arvore_utilidades
  has_many :arvores, :through => :arvore_utilidades


  validates_presence_of :nome, :message => " - deve ser preenchido"
  validates_uniqueness_of :nome, :message => " - nome ja cadastrado"
end
