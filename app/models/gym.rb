class Gym < ActiveRecord::Base
  # You should add the following AR association here: dependent: :destroy or it will throw you an error! This gym will still be referenced in a course
  # has_many :routes, dependent: :destroy
  # Here we are telling Rails that there is a connection between the two models and to destroy all routes if the gym is deleted
  # Also your show view for Gyms was not working at all, and it's because you named your model course but didn't change it from routes to courses here!
  # has_many :routes
  has_many :courses, dependent: :destroy
end
