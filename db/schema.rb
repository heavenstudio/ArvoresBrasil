# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120104223313) do

  create_table "arvore_condicoes", :force => true do |t|
    t.integer "arvore_id",      :null => false
    t.integer "condicao_id",    :null => false
    t.integer "preferencia_id", :null => false
  end

  create_table "arvore_estados", :id => false, :force => true do |t|
    t.integer "arvore_id", :null => false
    t.integer "estado_id", :null => false
  end

  create_table "arvore_florestas", :force => true do |t|
    t.integer "arvore_id",      :null => false
    t.integer "floresta_id",    :null => false
    t.integer "preferencia_id", :null => false
  end

  create_table "arvore_livros", :id => false, :force => true do |t|
    t.integer "arvore_id",              :null => false
    t.integer "livro_id",               :null => false
    t.integer "pagina",    :limit => 2
  end

  create_table "arvore_nomes_cientificos", :force => true do |t|
    t.integer  "arvore_id",               :null => false
    t.integer  "genero_id",               :null => false
    t.string   "especie",                 :null => false
    t.integer  "ordem",      :limit => 1
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "arvore_nomes_populares", :id => false, :force => true do |t|
    t.integer  "arvore_id",                    :null => false
    t.integer  "nome_popular_id",              :null => false
    t.integer  "ordem",           :limit => 1
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "arvore_parte_caracteristicas", :id => false, :force => true do |t|
    t.integer "arvore_id",         :null => false
    t.integer "parte_id",          :null => false
    t.integer "caracteristica_id", :null => false
  end

  create_table "arvore_parte_produtos", :force => true do |t|
    t.integer "arvore_id",  :null => false
    t.integer "parte_id",   :null => false
    t.integer "produto_id", :null => false
  end

  create_table "arvore_sucessoes", :force => true do |t|
    t.integer "arvore_id",      :null => false
    t.integer "sucessao_id",    :null => false
    t.integer "preferencia_id", :null => false
  end

  create_table "arvore_utilidades", :force => true do |t|
    t.integer "arvore_id",    :null => false
    t.integer "utilidade_id", :null => false
  end

  create_table "arvores", :force => true do |t|
    t.integer  "altura_minima",        :limit => 1
    t.integer  "altura_maxima",        :limit => 1
    t.integer  "dap_minimo",           :limit => 1
    t.integer  "dap_maximo",           :limit => 1
    t.integer  "copa_diametro_minimo", :limit => 1
    t.integer  "copa_diametro_maximo", :limit => 1
    t.integer  "sementes_kg",          :limit => 3
    t.integer  "sementes_viabilidade", :limit => 1
    t.text     "observacao"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "familia_id"
    t.integer  "pais_id"
    t.integer  "raiz_id"
    t.integer  "crescimento_id"
    t.integer  "germinacao_tempo_id"
    t.integer  "germinacao_taxa_id"
    t.integer  "extincao_id"
    t.integer  "folha_ciclo_id"
  end

  create_table "caracteristica_tipos", :force => true do |t|
    t.string "nome"
  end

  add_index "caracteristica_tipos", ["nome"], :name => "index_caracteristica_tipos_on_nome", :unique => true

  create_table "caracteristicas", :force => true do |t|
    t.integer "caracteristica_tipo_id", :null => false
    t.string  "nome"
  end

  add_index "caracteristicas", ["nome"], :name => "index_caracteristicas_on_nome", :unique => true

  create_table "condicao_tipos", :force => true do |t|
    t.string "nome", :null => false
  end

  add_index "condicao_tipos", ["nome"], :name => "index_condicao_tipos_on_nome", :unique => true

  create_table "condicoes", :force => true do |t|
    t.integer "condicao_tipo_id", :null => false
    t.string  "nome",             :null => false
    t.string  "descricao",        :null => false
  end

  add_index "condicoes", ["nome"], :name => "index_condicoes_on_nome", :unique => true

  create_table "crescimentos", :force => true do |t|
    t.string "nome"
    t.text   "descricao"
  end

  add_index "crescimentos", ["nome"], :name => "index_crescimentos_on_nome", :unique => true

  create_table "estados", :force => true do |t|
    t.string  "nome"
    t.string  "sigla"
    t.integer "pais_id"
  end

  create_table "extincoes", :force => true do |t|
    t.string "nome", :null => false
  end

  add_index "extincoes", ["nome"], :name => "index_extincoes_on_nome", :unique => true

  create_table "familias", :force => true do |t|
    t.string "nome"
  end

  add_index "familias", ["nome"], :name => "index_familias_on_nome", :unique => true

  create_table "floracoes", :force => true do |t|
    t.integer "arvore_id"
    t.integer "mes",       :limit => 1
  end

  create_table "florestas", :force => true do |t|
    t.string "nome", :null => false
  end

  add_index "florestas", ["nome"], :name => "index_florestas_on_nome", :unique => true

  create_table "folha_ciclos", :force => true do |t|
    t.string "nome"
    t.text   "descricao"
  end

  add_index "folha_ciclos", ["nome"], :name => "index_folha_ciclos_on_nome", :unique => true

  create_table "frutificacoes", :force => true do |t|
    t.integer "arvore_id"
    t.integer "mes",       :limit => 1
  end

  create_table "generos", :force => true do |t|
    t.string "nome"
  end

  create_table "germinacao_taxas", :force => true do |t|
    t.string "nome"
    t.string "descricao"
  end

  add_index "germinacao_taxas", ["nome"], :name => "index_germinacao_taxas_on_nome", :unique => true

  create_table "germinacao_tempos", :force => true do |t|
    t.string "nome"
  end

  add_index "germinacao_tempos", ["nome"], :name => "index_germinacao_tempos_on_nome", :unique => true

  create_table "livros", :force => true do |t|
    t.string "nome",    :null => false
    t.string "autor",   :null => false
    t.string "editora"
  end

  create_table "nomes_populares", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "paises", :force => true do |t|
    t.string "nome", :null => false
  end

  add_index "paises", ["nome"], :name => "index_paises_on_nome", :unique => true

  create_table "partes", :force => true do |t|
    t.string "nome", :null => false
  end

  add_index "partes", ["nome"], :name => "index_partes_on_nome", :unique => true

  create_table "preferencias", :force => true do |t|
    t.string "nome", :null => false
  end

  create_table "produto_tipos", :force => true do |t|
    t.string "nome"
  end

  add_index "produto_tipos", ["nome"], :name => "index_produto_tipos_on_nome", :unique => true

  create_table "produtos", :force => true do |t|
    t.integer "produto_tipo_id", :null => false
    t.string  "nome"
  end

  create_table "raizes", :force => true do |t|
    t.string "nome"
    t.text   "descricao"
  end

  add_index "raizes", ["nome"], :name => "index_raizes_on_nome", :unique => true

  create_table "sucessoes", :force => true do |t|
    t.string "nome", :null => false
  end

  create_table "utilidade_tipos", :force => true do |t|
    t.string "nome"
  end

  add_index "utilidade_tipos", ["nome"], :name => "index_utilidade_tipos_on_nome", :unique => true

  create_table "utilidades", :force => true do |t|
    t.integer "utilidade_tipo_id", :null => false
    t.string  "nome",              :null => false
  end

end
