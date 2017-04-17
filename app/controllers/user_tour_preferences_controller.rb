class UserTourPreferencesController < ApplicationController
  before_action :set_user_tour_preference, only: [:show, :edit, :update]

  def show
  end

  def new
    @user_tour_preference = UserTourPreference.new
  end

  def edit
  end

  def create
    @user_tour_preference = UserTourPreference.new(user_tour_preference_params)

    respond_to do |format|
      if @user_tour_preference.save
        format.html { redirect_to @user_tour_preference, notice: 'User tour preference was successfully created.' }
        format.json { render :show, status: :created, location: @user_tour_preference }
      else
        format.html { render :new }
        format.json { render json: @user_tour_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @user_tour_preference.update(user_tour_preference_params)
        format.html { redirect_to root_url, notice: 'User tour preference was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_tour_preference }
      else
        format.html { render :edit }
        format.json { render json: @user_tour_preference.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_user_tour_preference
      @user_tour_preference = UserTourPreference.find(params[:id])
    end

    def user_tour_preference_params
      params.require(:user_tour_preference).permit(:user_id, :referrer, :tour_date, :client_ip, :rating)
    end
end
