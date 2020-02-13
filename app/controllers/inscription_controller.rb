class InscriptionController < ApplicationController
  def index

  end

  def new
    @inscription = Inscription.new
  end

  def create
      @inscription = Inscription.new(email: params[:email], password: params[:password])
    if @inscription.save
      redirect_to home_path

    else
      render :new
    end

  end
end
