class Arvore < ActiveRecord::Base


  has_many :arvore_nomes_populares, :order => :ordem
  has_many :nomes_populares, :through => :arvore_nomes_populares

  has_many :arvore_nomes_cientificos, :order => :ordem
  has_many :generos, :through => :arvore_nomes_cientificos

  has_many :arvore_utilidades
  has_many :utilidades, :through => :arvore_utilidades

  has_many :arvore_parte_caracteristicas
  has_many :partes, :through => :arvore_parte_caracteristicas, :group => :parte_id #Muito maneiro isso !
  has_many :caracteristicas, :through => :arvore_parte_caracteristicas

  #has_many :arvore_parte_produtos
  #has_many :partes, :through => :arvore_parte_produtos, :group => :parte_id  #   ESTRAGA O DE CIMA !!!!! ???
  #has_many :produtos, :through => :arvore_parte_produtos
  
  has_many :bibliografias, :dependent => :destroy
  has_many :livros, :through => :bibliografias
  
  has_many :arvore_estados
  has_many :estados, :through => :arvore_estados
  
  
  has_many :floracoes, :dependent => :destroy
  has_many :frutificacoes, :dependent => :destroy


  belongs_to :familia
  belongs_to :extincao
  belongs_to :pais
  belongs_to :raiz
  belongs_to :germinacao_taxa
  belongs_to :germinacao_tempo  
  belongs_to :folha_ciclo
  belongs_to :crescimento    
  
  validates_presence_of :altura_minima, :message => " - deve ser preenchido"
  validates_numericality_of :altura_minima, 
                            :greater_than => 0,
                            :less_than => 100,
                            :message => " - deve ser um numero entre 0 e 100"


  validates_presence_of :familia_id, :message => " - deve ser preenchido"
  validates_presence_of :pais, :message => " - deve ser preenchido"
  validates_presence_of :extincao, :message => " - deve ser preenchido"
  validates_presence_of :germinacao_taxa, :message => " - deve ser preenchido"
  validates_presence_of :germinacao_tempo, :message => " - deve ser preenchido"

end
