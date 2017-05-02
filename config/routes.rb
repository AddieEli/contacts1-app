Rails.application.routes.draw do
 get '/friends' => 'contacts#address_book'
 get '/everyone' => 'contacts#many_contacts'
end
