SportsLeague::Application.routes.draw do

  # TODO:
  # Some routes are missing!  Some links in the app will not work.
  # Can you provide the missing routes?

  root :to => 'teams#index'

  get '/teams' => 'teams#index',         :as => :teams
   
  get '/teams/new' => 'teams#new',       :as => :new_team
  get '/teams/:id/edit' => 'teams#edit', :as => :edit_team
  
  get '/teams/:id' => 'teams#show',      :as => :team
 

end
