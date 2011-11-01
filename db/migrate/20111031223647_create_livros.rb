class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.string :nome
      t.string :autor
      t.string :editora
    end
  end
end
