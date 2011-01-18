class DimensionsController < ApplicationController

  def update
    @dimensions = current_user.dimensions

    @dimensions.attributes = params[:dimension]

    if @dimensions.save
      flash[:notice] = "Dimensions updated"
      redirect_to :back
    else
      flash[:alert] = "Unable to update dimensions"
      redirect_to :back
    end
  end

end