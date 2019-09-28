class StoreController < ApplicationController
  def index
    if params[:set_locale]
      redirect_to store_index_url(locale: params[:set_locale])
    else
      @books = Book.order(:title)
    end
  end
end
