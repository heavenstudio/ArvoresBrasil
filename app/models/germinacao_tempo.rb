class GerminacaoTempo < ActiveRecord::Base
    has_many :arvores

    validates_presence_of :tempo, :message => " - deve ser preenchido"
    validates_uniqueness_of :tempo, :message => " - ja cadastrado"

end
