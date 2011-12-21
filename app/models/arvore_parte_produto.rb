class ArvoreParteProduto < ActiveRecord::Base
  belongs_to :arvore
  belongs_to :produto
  belongs_to :parte
end
