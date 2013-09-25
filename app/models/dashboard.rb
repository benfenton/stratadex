class Dashboard
  def initialize user
    @user = user
  end

  def contacts
    @contacts ||= user.contacts
  end


  private 
  
  attr_reader :user
end