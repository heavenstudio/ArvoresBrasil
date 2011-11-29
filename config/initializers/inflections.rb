# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end


ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'arvore', 'arvores'
  inflect.irregular 'familia', 'familias'
  inflect.irregular 'pais', 'paises'
  inflect.irregular 'raiz', 'raizes'
  inflect.irregular 'folha_ciclo', 'folha_ciclos'
  inflect.irregular 'crescimento', 'crescimentos'
  inflect.irregular 'germinacao_tempo', 'germinacao_tempos'
  inflect.irregular 'germinacao_taxa', 'germinacao_taxas'
  inflect.irregular 'frutificacao', 'frutificacoes'
  inflect.irregular 'floracao', 'floracoes'
  

  inflect.irregular 'nome_popular', 'nomes_populares'
    inflect.irregular 'NomePopular', 'NomesPopulares'
  inflect.irregular 'arvore_nome_popular', 'arvore_nomes_populares'
    inflect.irregular 'ArvoreNomePopular', 'ArvoreNomesPopulares'

   inflect.irregular 'arvore_nome_cientifico', 'arvore_nomes_cientificos'
    inflect.irregular 'ArvoreNomeCientifico', 'ArvoreNomesCientificos'
   
      
  inflect.irregular 'genero', 'generos'
  inflect.irregular 'extincao', 'extincoes'
  inflect.irregular 'livro', 'livros'
  inflect.irregular 'bibliografia', 'bibliografias'
  
  #Textos e HTML
  inflect.irregular 'erro', 'erros'
  inflect.irregular 'impede', 'impedem'
 
end










