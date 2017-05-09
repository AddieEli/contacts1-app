Rails.application.routes.draw do
 get '/friends' => 'contacts#address_book'
 get '/everyone' => 'contacts#many_contacts'

 get '/contacts/' => 'contacts#index'

 get '/contacts/new' => 'contacts#new'
 post '/contacts' => 'contact#create'

 get '/contacts/:id' => 'contacts#show'

 get '/contacts/:id/edit' => 'contacts#edit'
 patch '/contacts/:id/update' => 'contacts#update'

 delete '/contacts/:id' => 'contacts#destroy'
end
