class Arvore < ActiveRecord::Base


  has_many :nomes_populares #, :dependent => :destroy
  has_many :populares, :through => :nomes_populares
  
  belongs_to :familia
  belongs_to :extincao
  belongs_to :pais
    
  
  validates_presence_of :altura_minima, :message => " - deve ser preenchido"
  validates_numericality_of :altura_minima, 
                            :greater_than => 0,
                            :less_than => 100,
                            :message => " - deve ser um numero entre 0 e 100"


  validates_presence_of :familia_id, :message => " - deve ser preenchido"
  validates_presence_of :pais, :message => " - deve ser preenchido"
  validates_presence_of :extincao, :message => " - deve ser preenchido"



end
