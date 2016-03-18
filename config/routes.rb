Rails.application.routes.draw do
  root to: "gyms#index"

  resources :gyms do
    resources :routes
  end

end

# Prefix Verb   URI Pattern                             Controller#Action
#           root GET    /                                       gyms#index
#     gym_routes GET    /gyms/:gym_id/routes(.:format)          routes#index
#                POST   /gyms/:gym_id/routes(.:format)          routes#create
#  new_gym_route GET    /gyms/:gym_id/routes/new(.:format)      routes#new
# edit_gym_route GET    /gyms/:gym_id/routes/:id/edit(.:format) routes#edit
#      gym_route GET    /gyms/:gym_id/routes/:id(.:format)      routes#show
#                PATCH  /gyms/:gym_id/routes/:id(.:format)      routes#update
#                PUT    /gyms/:gym_id/routes/:id(.:format)      routes#update
#                DELETE /gyms/:gym_id/routes/:id(.:format)      routes#destroy
#           gyms GET    /gyms(.:format)                         gyms#index
#                POST   /gyms(.:format)                         gyms#create
#        new_gym GET    /gyms/new(.:format)                     gyms#new
#       edit_gym GET    /gyms/:id/edit(.:format)                gyms#edit
#            gym GET    /gyms/:id(.:format)                     gyms#show
#                PATCH  /gyms/:id(.:format)                     gyms#update
#                PUT    /gyms/:id(.:format)                     gyms#update
#                DELETE /gyms/:id(.:format)                     gyms#destroy
