class ArvoreEstado < ActiveRecord::Base
  belongs_to :arvore
  belongs_to :estado
end
