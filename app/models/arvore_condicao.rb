class ArvoreCondicao < ActiveRecord::Base
  belongs_to :arvore
  belongs_to :condicao
  belongs_to :preferencia
end
