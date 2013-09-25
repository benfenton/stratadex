class ContactsController < ApplicationController
 

  def create
    @contact = current_user.contacts.new(contact_params)
    if @contact.save
      redirect_to dashboard_path
    else
      redirect_to dashboard_path, notice: "Please enter at least a first name."
    end
  end

  def destroy
    contact = find_contact
    contact.destroy
    redirect_to dashboard_path
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :phone_number, :address, :email)
  end

  def find_contact 
    current_user.contacts.find(params[:id])
  end

end