class Floracao < ActiveRecord::Base
  belongs_to :arvore
  #validates_presence_of :mes, :message => " - deve ser preenchido"
  #validates_uniqueness_of :arvore_id, :mes, :message => " -  ja cadastrado"
end
