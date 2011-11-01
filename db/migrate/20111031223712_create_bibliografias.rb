class CreateBibliografias < ActiveRecord::Migration
  def change
    create_table :bibliografias, :id => false do |t|
      t.integer :arvore_id, :null => false
      t.integer :livro_id, :null => false
      t.integer :pagina, :limit => 2
    end
  end
end
