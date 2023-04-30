class PagesController < ApplicationController
  before_action :set_search
  def home
    redirect_to articles_path if logged_in?
  end
  def about

  end
end
