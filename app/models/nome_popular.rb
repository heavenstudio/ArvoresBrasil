class NomePopular < ActiveRecord::Base
  #set_primary_keys :arvore_id, :popular_id

  belongs_to :arvore
  belongs_to :popular
end
