class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @cart = session[:product]
  end

  def create
    product = params[:product]
    session[:product] = product
    redirect_to '/'
  end

  def cart
    session[:cart] ||= []
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

end
