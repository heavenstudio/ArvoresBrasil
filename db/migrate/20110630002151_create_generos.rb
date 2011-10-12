class CreateGeneros < ActiveRecord::Migration
  def up
    create_table :generos do |t|
      t.string :nome 
    end
  end


  def down
    drop_table :generos
  end
end
