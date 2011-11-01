ArvoresBrasil::Application.routes.draw do

  resources :folha_ciclos

  resources :familias
  resources :arvores
  
  root :to => 'home#index'
        
  namespace :admin do  
    resources :arvores
    resources :familias
    resources :paises
    resources :crescimentos
    resources :generos
    resources :germinacao_taxas
    resources :germinacao_tempos
    resources :extincoes    
    resources :populares
    resources :folha_ciclos
    resources :livros
  end

end
