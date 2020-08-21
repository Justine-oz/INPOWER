class UserquestsController < ApplicationController


def new
  @quest = Quest.find(params[:quest_id])
  @userquest = Userquest.new
end

  def create
    @userquest = Userquest.new
    @quest = Quest.find(params[:quest_id])
    @userquest.quest = @quest
    @userquest.save
    redirect_to userquest_path(@userquest)
  end

  private

end
