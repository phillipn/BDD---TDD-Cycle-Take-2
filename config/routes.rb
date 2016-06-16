Rottenpotatoes::Application.routes.draw do
  resources :movies do
    get 'similar_movies', on: :member
  end
  # map '/' to be a redirect to '/movies'
  get "/" => "movies#index", :as => "root"
end
