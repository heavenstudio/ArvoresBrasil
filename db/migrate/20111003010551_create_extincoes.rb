class CreateExtincoes < ActiveRecord::Migration
  def change
    create_table :extincoes do |t|
      t.string :nome, :null => false
    end
    add_index   :extincoes, :nome,        :unique
    add_column  :arvores,   :extincao_id, :integer
  end
end
