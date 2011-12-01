class Pais < ActiveRecord::Base
  validates_presence_of :nome, :message => " - deve ser preenchido"
  validates_uniqueness_of :nome, :message => " - nome ja cadastrado"

  has_many :arvores
  has_many :estados
  
end
