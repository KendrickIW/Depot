class StoreController < ApplicationController
  before_action :increment_counter, only: [:index]

  def index
    @products = Product.order(:title)
  end

  private

  def increment_counter
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end
end
