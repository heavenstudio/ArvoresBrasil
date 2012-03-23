class Familia < ActiveRecord::Base
  has_many :arvores
  
  validates_presence_of :nome, :message => " - deve ser preenchido"
  validates_uniqueness_of :nome, :message => " - nome ja cadastrado"


  def self.search(search)
    if search
      #find(:all, :conditions => ['nome LIKE ?', "#{search}%"])      Rails 2
      where("nome LIKE ?", "#{search}%")                            #Rails 3
    else
      find(:all)
    end
  end

end
