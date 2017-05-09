class ContactsController < ApplicationController
 
  # def address_book
  #   @contact = Contact.first
  #   render "friends.html.erb"
  # end 

  # def many_contacts
  #   @contacts = Contact.all
      
  #   render 'many_contacts.html.erb'
  # end 

  def index
    @contacts = Contact.all 
  end

  def show
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
  end

  def new
  end

  def create
    contact = Contact.new(
                          first_name: params[:first_name],
                          last_name: params[:last_name],
                          phone_number: params[:phone_number],
                          email: params[:email]
                          )
    contact.save
    flash[:success] = "Contact Succefully Created"
    redirect_to "/contacts/#{ contact.id}"

  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    contact = Contact.find(params[:id])
    contact.assign_attributes(
                            first_name: params[:first_name],
                            last_name: params[:last_name],
                            email: params[:email],
                            phone_number: params[:phone_number]
                            )
    contact.save 
    flash[:success] = "Contact Updated"
    redirect_to "/contacts/#{ contact.id}"
  end
  
  def destroy
    contact = contact.find(params[:id])
    contact.destroy
    flash[:warning] = "Contact Unfriended"
    redirect_to "/"
  end 
end
