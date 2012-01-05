class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.string :nome, :null => false
      t.string :autor, :null => false
      t.string :editora
    end
  end
end
