Rails.application.routes.draw do
  root to: "gyms#index"

  resources :gyms do
    resources :courses
  end

end

# Prefix Verb   URI Pattern                              Controller#Action
#            root GET    /                                        gyms#index
#     gym_courses GET    /gyms/:gym_id/courses(.:format)          courses#index
#                 POST   /gyms/:gym_id/courses(.:format)          courses#create
#  new_gym_course GET    /gyms/:gym_id/courses/new(.:format)      courses#new
# edit_gym_course GET    /gyms/:gym_id/courses/:id/edit(.:format) courses#edit
#      gym_course GET    /gyms/:gym_id/courses/:id(.:format)      courses#show
#                 PATCH  /gyms/:gym_id/courses/:id(.:format)      courses#update
#                 PUT    /gyms/:gym_id/courses/:id(.:format)      courses#update
#                 DELETE /gyms/:gym_id/courses/:id(.:format)      courses#destroy
#            gyms GET    /gyms(.:format)                          gyms#index
#                 POST   /gyms(.:format)                          gyms#create
#         new_gym GET    /gyms/new(.:format)                      gyms#new
#        edit_gym GET    /gyms/:id/edit(.:format)                 gyms#edit
#             gym GET    /gyms/:id(.:format)                      gyms#show
#                 PATCH  /gyms/:id(.:format)                      gyms#update
#                 PUT    /gyms/:id(.:format)                      gyms#update
#                 DELETE /gyms/:id(.:format)                      gyms#destroy
