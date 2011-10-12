class CreateExtincoes < ActiveRecord::Migration
  def up
    create_table :extincoes do |t|
      t.string :grau, :null => false
    end
    add_column :arvores, :extincao_id, :integer
  end

  def down
    remove_column :arvores, :extincao_id
    drop_table :extincoes
  end
end
