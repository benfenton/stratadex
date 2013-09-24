class ContactsController < ApplicationController
 

  def create
    @contact = current_user.contacts.new(contact_params)
    if @contact.save
      redirect_to dashboard_path
    else
      redirect_to dashboard_path, notice: "Contact was not saved!"
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :phone_number, :address, :email)
  end

end