class ArvoreNomeCientifico < ActiveRecord::Base
  belongs_to :arvore
  belongs_to :genero
  

  validates_presence_of :especie, :message => " - deve ser preenchido"
end
