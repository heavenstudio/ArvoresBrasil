class CreateArvores < ActiveRecord::Migration
  def up
    create_table :arvores do |t|

      #MYSQL
      #:limit => 1 --TINYINT
      #:limit => 2 --SMALLINT
      #:limit => 3 --MEDIUMINT
      #:limit => 4 --INT
      #:limit => 8 --BIGINT
    
      t.integer :altura_minima, :limit => 1   
      t.integer :altura_maxima, :limit => 1
      t.integer :dap_minimo, :limit => 1
      t.integer :dap_maximo, :limit => 1
      t.integer :copa_diametro_minimo, :limit => 1
      t.integer :copa_diametro_maximo, :limit => 1
      t.integer :sementes_kg, :limit => 3
      t.integer :sementes_viabilidade, :limit => 1
      t.text    :observacao

      t.timestamps
    end
  end

  def down
    drop_table :arvores
  end
end



