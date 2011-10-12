class NomePopular < ActiveRecord::Base
  #validates_presence_of :nome, :message => " - deve ser preenchido"
  validates :nome, :presence => true,
            :length   => { :maximum => 50 },
            :uniqueness => { :case_sensitive => false }
  #validates_uniqueness_of :nome, :message => " - nome ja cadastrado"
  
  
  has_many :arvores_nomes_populares, :order => "order"
  has_many :arvores, :through => :arvores_nomes_populares
  
  
end
