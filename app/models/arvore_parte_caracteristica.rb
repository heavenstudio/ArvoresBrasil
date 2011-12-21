class ArvoreParteCaracteristica < ActiveRecord::Base
  belongs_to :arvore
  belongs_to :caracteristica
  belongs_to :parte
end
