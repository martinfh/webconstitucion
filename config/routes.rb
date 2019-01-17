Rails.application.routes.draw do
  devise_for :users
  resources :exposicions
  get 'pagina/inicio'
  get 'pagina/info'
  get 'pagina/contacto'
	root 'pagina#inicio'
  resources :artista
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
