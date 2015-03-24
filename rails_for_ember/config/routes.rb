RailsForEmber::Application.routes.draw do
  # If a GET requet comes in at 'http:://locahost:300', then match it to the
  # posts controller, index action (or method/function())
  get 'posts' => 'posts#index'

  # GET goes to posts controller, show action
  get 'posts/:id' => 'posts#show'

end
