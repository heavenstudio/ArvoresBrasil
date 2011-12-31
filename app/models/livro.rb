class Livro < ActiveRecord::Base

  validates :nome, :presence => true,
            :length   => { :maximum => 50 }
  
  has_many :arvore_livros, :dependent => :destroy
  has_many :arvores, :through => :arvore_livros
end
