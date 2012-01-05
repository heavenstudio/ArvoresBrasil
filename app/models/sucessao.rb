class Sucessao < ActiveRecord::Base
  has_many :arvore_sucessoes
  has_many :arvores, :through => :arvore_sucessoes
  has_many :preferencias, :through => :arvore_sucessoes
end
