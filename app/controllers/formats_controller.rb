class FormatsController < ApplicationController

  def index
    @formats = Format.all.order(:kind)
  end

  def show
    @format = Format.find(params[:id])
  end
end
