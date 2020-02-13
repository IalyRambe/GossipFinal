class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def new
    @gossip = Gossip.new
  end

  def create
      @gossip = Gossip.new( title: params[:title], content: params[:content])
    if @gossip.save
      redirect_to home_path

    else
      render new_gossip_path
    end

  end

  def show
    @gossip = Gossip.find(params[:id])

  end

end
