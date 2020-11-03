class InvitationsController < ApplicationController
  def create
    user = User.where(username: params['invitee_username']).first
    event = Event.find(params[:event_id])
    @invitation = Invitation.new
    @invitation.invitor_id = current_user.id
    @invitation.event_id = params['event_id']
    @invitation.invitee_id = user.id
    if @invitation.save
      flash[:notice] = 'Invitation sent'
      redirect_to event_path(event)
    else
      flash[:notice] = 'Invitation not sent'
      redirect_to event_path(event)
    end
  end
end
