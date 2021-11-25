Rails.application.routes.draw do
  # route is going to be the http request and do crud actionsin the browswer
  # lead somewhere in the controller
  # combination of the url as well as the HTTP request

  # root 'controller#action' - home page to the url pattern
    # root 'static#home'
  # resources :controller - generate all the routes and actions for a controller 
    #resources :contacts
      # -with relationships with models you are going to embed two levels deep
      # resources :contacts do 
      #   resources :notes
      # end

     #best practice
    #  resources :contacts do 
    #   resources :notes  
    # end
  

    # resources :notes do
    #   resources: comments
    # end

  # (Custom routes) doing the route by hand /manually 
  # httpverb 'pattern', to: 'controller#action'
  # get         read
  # post        create
  # put / patch update
  # delete      destroy
  #   get '/taco'
    
  root 'subs#index'

  resources :subs do
      resources :topics
  end

  resources :topics do
    resources :comments
  end
end
