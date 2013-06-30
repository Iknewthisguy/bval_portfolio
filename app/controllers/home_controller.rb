class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def exhibit
  end

  def portfolio
  end
end
