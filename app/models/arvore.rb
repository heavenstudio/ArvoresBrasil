class Arvore < ActiveRecord::Base
  #IGNORED_ATTRS = Set[:id, :created_at, :created_on, :deleted_at, :updated_at, :updated_on, :deleted_on]

  has_many :arvore_nomes_populares, :order => :ordem
  has_many :nomes_populares, :through => :arvore_nomes_populares

  has_many :arvore_nomes_cientificos, :order => :ordem
  has_many :generos, :through => :arvore_nomes_cientificos

  has_many :arvore_utilidades
  has_many :utilidades, :through => :arvore_utilidades

  has_many :arvore_parte_caracteristicas
  has_many :partes, :through => :arvore_parte_caracteristicas#, :group => :parte_id #Muito maneiro isso !
  has_many :caracteristicas, :through => :arvore_parte_caracteristicas

  has_many :arvore_parte_produtos
  #has_many :partes, :through => :arvore_parte_produtos, :group => :parte_id  #   ESTRAGA O DE CIMA !!!!! ???
  has_many :produtos, :through => :arvore_parte_produtos

  has_many :arvore_condicoes
  has_many :condicoes, :through => :arvore_condicoes
  #has_many :preferencias, :through => :arvore_condicoes, :group => :preferencia_id

  has_many :arvore_sucessoes
  has_many :sucessoes, :through => :arvore_sucessoes
  #has_many :preferencias, :through => :arvore_sucessoes, :group => :preferencia_id

  has_many :arvore_livros, :dependent => :destroy
  has_many :livros, :through => :arvore_livros
  
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

  validates_presence_of :familia_id
  validates_presence_of :pais
  validates_presence_of :extincao
  validates_presence_of :germinacao_taxa
  validates_presence_of :germinacao_tempo

  def self.search(searchNomePopular)
    if searchNomePopular  
      joins(:nomes_populares).where('nome LIKE ?', "%#{searchNomePopular}%") #Rails 3
    else
      scoped
    end
  end

end
