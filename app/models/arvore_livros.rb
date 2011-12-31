class ArvoreLivro < ActiveRecord::Base
  belongs_to :arvore
  belongs_to :livro
end
