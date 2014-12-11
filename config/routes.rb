Myrottenpotatoes::Application.routes.draw do
  resources :movies
  root :to => redirect('/movies')
  #Route that posts Search TMDb form'
  post '/movies/search_tmdb'
end
