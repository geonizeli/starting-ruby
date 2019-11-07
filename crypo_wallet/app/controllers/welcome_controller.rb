class WelcomeController < ApplicationController
  def index
    @nome = "João"
    # @nome = params[:nome]
  end
end
