class Floracao < ActiveRecord::Base
  has_many :arvores
  validates_presence_of :mes, :message => " - deve ser preenchido"
  validates_uniqueness_of :arvore_id, :mes, :message => " -  ja cadastrado"
end
