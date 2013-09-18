class Dashboard
  def initialize user
    @user = user
  end

  def contacts
    Contact.where(user_id: current_user)
  end


  private 
  attr_reader :user

  def current_user
    User.find(params[:id])
  end

end