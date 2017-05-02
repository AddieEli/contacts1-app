class ContactsController < ApplicationController
  def address_book
    @contact = Contact.first
    render "friends.html.erb"
  end 

def many_contacts
  @contacts = Contact.all
    
  
  render 'many_contacts.html.erb'
end 

end
