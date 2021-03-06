Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
 
 root to: 'store_finder#home'
 
 get 'cats' => 'store_finder#index'
 get 'home' => 'store_finder#home'
 get 'adopt' => 'store_finder#adopt'
 get 'contact' => 'store_finder#contact'
 get 'breed' => 'store_finder#breeds'
 get 'search_results' => 'store_finder#search_results', as: 'search_results'

end
