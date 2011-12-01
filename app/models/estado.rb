class Estado < ActiveRecord::Base
  belongs_to :pais

  has_many :arvore_estados
  has_many :arvores, :through => :arvore_estados
end
