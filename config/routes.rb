Rails.application.routes.draw do

  get "/api/v0/users/:user_id/favorites", to: "api/v0/user_playgrounds#index"
  post "/api/v0/users/favorites", to: "api/v0/user_playgrounds#create"
  get "/api/v0/playgrounds/:playground_id/reviews", to: "api/v0/reviews#index"
  post "/api/v0/playgrounds/reviews", to: "api/v0/reviews#create"
  get "/api/v0/playgrounds/:location/:radius", to: "api/v0/playgrounds#index"
  get "/api/v0/playgrounds/:playground_id", to: "api/v0/playgrounds#show"
end
