class WelcomeController < ApplicationController
  def index
  	redirect_to companies_path
  end
end
