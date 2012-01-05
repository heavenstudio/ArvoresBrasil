class ArvoreSucessao < ActiveRecord::Base
  belongs_to :arvore
  belongs_to :sucessao
  belongs_to :preferencia
end
