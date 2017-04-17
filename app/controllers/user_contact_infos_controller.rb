class UserContactInfosController < ApplicationController

  #before_action :set_user, only: [:new]

  def new
    @user_contact_info = UserContactInfo.new
  end

  def create
    @user_contact_info = UserContactInfo.new(user_contact_info_params)

    respond_to do |format|
      if @user_contact_info.save
        format.html { redirect_to new_user_tour_preference_path, notice: 'User contact info was successfully created.' }
        format.json { render :show, status: :created, location: @user_contact_info }
      else
        format.html { render :new }
        format.json { render json: @user_contact_info.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def set_user
      user = User.find_by_welcome_token(params[:token])
      if user.present?
        session[:user] = user
        #if user.user_contact_info.present?
        #  redirect_to new_user_tour_preference_path
        #elsif
        #  redirect_to edit_user_tour_preference_path
        #end
      else
        redirect_to root_url
      end
    end

    def user_contact_info_params
      params.require(:user_contact_info).permit(:user_id, :first, :last, :phone)
    end

end
