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
  
  inflect.irregular 'arvore_estado', 'arvore_estados'
    inflect.irregular 'ArvoreEstado', 'ArvoreEstados'
  
  inflect.irregular 'nome_popular', 'nomes_populares'
    inflect.irregular 'NomePopular', 'NomesPopulares'
  inflect.irregular 'arvore_nome_popular', 'arvore_nomes_populares'
    inflect.irregular 'ArvoreNomePopular', 'ArvoreNomesPopulares'

  inflect.irregular 'arvore_nome_cientifico', 'arvore_nomes_cientificos'
    inflect.irregular 'ArvoreNomeCientifico', 'ArvoreNomesCientificos'


  inflect.irregular 'utilidade_tipo', 'utilidade_tipos'
    inflect.irregular 'UtilidadeTipo', 'UtilidadeTipos'
  inflect.irregular 'utilidade', 'utilidades'
  inflect.irregular 'arvore_utilidade', 'arvore_utilidades'
    inflect.irregular 'ArvoreUtilidade', 'ArvoreUtilidades'

  inflect.irregular 'parte', 'partes'

  inflect.irregular 'caracteristica', 'caracteristicas'
  inflect.irregular 'caracteristica_tipo', 'caracteristica_tipos'
    inflect.irregular 'CaracteristicaTipo', 'CaracteristicaTipos'
  inflect.irregular 'arvore_parte_caracteristica', 'arvore_parte_caracteristicas'
    inflect.irregular 'ArvoreParteCaracteristica', 'ArvoreParteCaracteristicas'                    
        
  inflect.irregular 'genero', 'generos'
  inflect.irregular 'extincao', 'extincoes'
  inflect.irregular 'livro', 'livros'
  inflect.irregular 'bibliografia', 'bibliografias'
  
  #Textos e HTML
  inflect.irregular 'erro', 'erros'
  inflect.irregular 'impede', 'impedem'
 
end










