class Livro < ActiveRecord::Base

  validates :nome, :presence => true,
            :length   => { :maximum => 50 }
  
  has_many :bibliografias, :dependent => :destroy
  has_many :arvores, :through => :bibliografias
end
