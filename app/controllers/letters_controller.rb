class LettersController < ApplicationController

  def edit
    @letter_map = current_user.letter_map
  end

  def update
    current_user.letter_map.each do |letter, colour|
      if params[:letters][letter].present?
        obj = Letter.find_or_create_by_user_id_and_letter(current_user.id, letter)
        obj.update_attribute(:colour, params[:letters][letter])
      end
    end

    flash[:notice] = "Letters updated"

    redirect_to edit_letters_path
  end

end