class FolhaCiclo < ActiveRecord::Base
  has_many :arvores
  
  validates_presence_of :ciclo, :message => " - deve ser preenchido"
  validates_uniqueness_of :ciclo, :message => " - ciclo ja cadastrado"
end
