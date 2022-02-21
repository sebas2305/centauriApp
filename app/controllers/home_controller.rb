class HomeController < ApplicationController
  def index
    @contact = Contact.new
    @quote = Quote.new
  end

end
