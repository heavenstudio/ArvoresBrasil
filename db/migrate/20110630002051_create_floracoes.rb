class CreateFloracoes < ActiveRecord::Migration
  def up
    create_table :floracoes do |t|
      t.integer :arvore_id
      t.integer :mes, :limit => 1
      t.timestamps
    end
  end

  def down
    drop_table :floracoes
  end
end
