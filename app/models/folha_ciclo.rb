class FolhaCiclo < ActiveRecord::Base
  has_many :arvores
  
  validates_presence_of :nome, :message => " - deve ser preenchido"
  validates_uniqueness_of :nome, :message => " - ciclo ja cadastrado"
end
