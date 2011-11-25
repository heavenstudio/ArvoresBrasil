class NomePopular < ActiveRecord::Base

  #validates_presence_of :nome, :message => " - deve ser preenchido"
  validates :nome, :presence => true,
            :length   => { :maximum => 50 },
            :uniqueness => { :case_sensitive => false }
  #validates_uniqueness_of :nome, :message => " - nome ja cadastrado"
  
  
  has_many :arvore_nomes_populares, :order => :ordem
  has_many :arvores, :through => :arvore_nomes_populares
end
