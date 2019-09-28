class AdminController < ApplicationController
  def index
    @user = User.find(session[:user_id])
    @users = User.all.count
    @orders = Order.all.count
    @books = Book.all.count
  end
end
