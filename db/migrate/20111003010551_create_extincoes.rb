class CreateExtincoes < ActiveRecord::Migration
  def change
    create_table :extincoes do |t|
      t.string :grau, :null => false
    end
    add_column :arvores, :extincao_id, :integer
  end
end
