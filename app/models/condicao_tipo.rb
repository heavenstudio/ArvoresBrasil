class CondicaoTipo < ActiveRecord::Base
  has_many :condicoes
  
  validates_presence_of :nome, :message => " - deve ser preenchido"
  validates_uniqueness_of :nome, :message => " - nome ja cadastrado"
end
