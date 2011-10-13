class GerminacaoTaxa < ActiveRecord::Base
  has_many :arvores
  
  validates_presence_of :taxa, :message => " - deve ser preenchido"
  validates_uniqueness_of :taxa, :message => " - ja cadastrado"
end
