class UserTourPreferencesController < ApplicationController

  before_action :authorize
  before_action :set_user_tour_preference_interests, only: [:new, :create]
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
    puts @user_tour_preference
    respond_to do |format|
      if @user_tour_preference.save
        #user_tour_preference_params["user_tour_preference_interests"].each do |option|
        #  UserTourPreferenceInterest.create(preference_id: @user_tour_preference.id, interest: option)
        #end
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

    def set_user_tour_preference_interests
      @user_tour_preference_interest_options = ["Pool", "Rec Room", "Movie Theater", "On Site Doctor", "Time Machine"]
    end

    def user_tour_preference_params
      params.require(:user_tour_preference).permit(:user_id, :referrer, :tour_date, :client_ip, :rating, :user_tour_preference_interests)
    end
end
