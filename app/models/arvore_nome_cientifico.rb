class ArvoreNomeCientifico < ActiveRecord::Base
  belongs_to :arvore
  belongs_to :genero
end
