ArvoresBrasil::Application.routes.draw do

  get "page/:id" => "page#index", :as => :page
  
  
  resources :folha_ciclos

  resources :familias
  resources :arvores
  
  root :to => 'home#index'


        
  namespace :admin do  
    root :to => 'home#index'
    resources :arvores
    resources :familias
    resources :paises
    resources :estados
    resources :raizes
    resources :crescimentos
    resources :generos
    resources :germinacoes
    resources :germinacao_taxas
    resources :germinacao_tempos
    
    resources :utilidade_tipos
    resources :utilidades
    resources :partes
    resources :caracteristica_tipos
    resources :caracteristicas

    resources :condicao_tipos
    resources :condicoes
    
    resources :preferencias

    resources :produto_tipos
    resources :produtos
    
    resources :sucessoes
    
    resources :extincoes    
    resources :nomes_populares
    resources :folha_ciclos
    resources :livros
    
  end

end
