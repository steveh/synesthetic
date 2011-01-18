class TextsController < ApplicationController

  def index
    @texts = current_user.texts

    @default_text = Text.default
  end

  def show
    @letter_map = current_user.letter_map

    @dimensions = current_user.dimensions

    @text = current_user.texts.find(params[:id])
  end

  def new
    @text = current_user.texts.new

    @text.text = Text.default.text
  end

  def edit
    @text = current_user.texts.find(params[:id])
  end

  def create
    @text = current_user.texts.new
    @text.attributes = params[:text]

    if @text.save
      flash[:notice] = "Text created"
      redirect_to @text
    else
      flash[:alert] = "Unable to create text"
      render :new
    end
  end

  def update
    @text = current_user.texts.find(params[:id])
    @text.attributes = params[:text]

    if @text.save
      flash[:notice] = "Text updated"
      redirect_to @text
    else
      flash[:alert] = "Unable to update text"
      render :edit
    end
  end

  def destroy
    @text = current_user.texts.find(params[:id])

    if @text.destroy
      flash[:notice] = "Text deleted"
      redirect_to texts_path
    else
      flash[:alert] = "Unable to delete text"
      redirect_to texts_path
    end
  end

end