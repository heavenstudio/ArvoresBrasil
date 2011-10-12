class ArvoreNomePopular < ActiveRecord::Base

  set_primary_keys :arvore_id, :nome_popular_id

  belongs_to :arvore
  belongs_to :nome_popular

end
