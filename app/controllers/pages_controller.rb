class PagesController < ApplicationController
  skip_before_action :authorized, only: [:index, :about]

  def index
  end

  def about
  end
end
