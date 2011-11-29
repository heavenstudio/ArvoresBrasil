class Genero < ActiveRecord::Base

  validates :nome, :presence => true,
            :length   => { :maximum => 50 },
            :uniqueness => { :case_sensitive => false }
            
  has_many :arvore_nomes_cientificos, :order => :ordem
  has_many :arvores, :through => :arvore_nomes_cientificos

end
