class FormatsController < ApplicationController

  def index
    @formats = Format.all
  end

  def show
    @format = Format.find(params[:id])
  end
end
