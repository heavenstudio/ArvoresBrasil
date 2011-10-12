class Extincao < ActiveRecord::Base
  has_many :arvores

  validates_presence_of :grau, :message => " - deve ser preenchido"
  validates_uniqueness_of :grau, :message => " - nome ja cadastrado"
  
end
