class UserContactInfosController < ApplicationController

  def new
    @user_contact_info = UserContactInfo.new
  end

  def create
    @user_contact_info = UserContactInfo.new(user_contact_info_params)

    respond_to do |format|
      if @user_contact_info.save
        format.html { redirect_to new_user_tour_preference_url(@user_contact_info.user_id), notice: 'User contact info was successfully created.' }
        format.json { render :show, status: :created, location: @user_contact_info }
      else
        format.html { render :new }
        format.json { render json: @user_contact_info.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def user_contact_info_params
      params.require(:user_contact_info).permit(:user_id, :first, :last, :phone)
    end

end
