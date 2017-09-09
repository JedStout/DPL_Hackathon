class BiosController < ApplicationController
  def index
    @bios = Bio.all
   end

   def show
    @bio = Bio.find(params[:id])
  end

  def new
    @bio = Bio.new
   end

  def edit
    @bio = Bio.find(params[:id])
   end
  # make this work!
end
