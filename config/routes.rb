Rails.application.routes.draw do
  # root url
 root 'admin_dashboard#index'

 resources :customers do
   resources :appointments do
     resources :services
   end
 end
 
 resources :appointments do
   resources :services
 end
 
 resources :services do
     resources :appointments
 end

 resources :services
 
 resources :barbers do
   resources :appointments
 end
 
 devise_for :users
 
 get 'admin_dashboard/index'
 get '/signedinuserprofile' => 'customers#signedinuserprofile'
 # get '/signedinadmin' => ''

end
