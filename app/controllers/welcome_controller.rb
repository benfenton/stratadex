class WelcomeController < ApplicationController
  skip_before_filter

  def index
    render
  end
end