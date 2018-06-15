Rails.application.routes.draw do
  resources :pub_tests
  get 'pub_test/run_crawl/:id', to: 'pub_tests#run_crawl', as: :run_crawl
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
