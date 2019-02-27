class HackathonController < ApplicationController
  def register
  end

  def submit
    h = Hackathon.new(
      team_name:params[:team_name],
      leader_name:params[:leader_name],
      team_member_details:params[:team_member_details],
      contact_number:params[:contact_number],
      email_id:params[:email_id]
      )
      h.save
      flash[:success] = "Succesfully Registered For Hackathon"
      redirect_to root_url
  end
end
