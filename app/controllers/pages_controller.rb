class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user
    # @last_mood = current_user.mood
    @moods = User::MOODS
    p current_user
    @quests = Quest.find_by_moods(current_user.moods)
  end

  def mood_update
    new_moods = params.select {|param, value| value == "on"}.keys
    current_user.moods = new_moods.first(4)
    current_user.save
    redirect_to dashboard_path(anchor: "top-quest")
  end

private

# def set_user
#   @user = User.find(params[:id])
# end

def user_params
  params.require(:user).permit(:mood)
end
end
