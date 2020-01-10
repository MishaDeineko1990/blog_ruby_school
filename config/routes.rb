Rails.application.routes.draw do
  get 'home/index'
  # get 'contacts/index'


  resource :contacts, only:[:new, :create], path_names: {:new => ''}
  resources :articles do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
