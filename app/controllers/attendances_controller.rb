class AttendancesController < ApplicationController
  def create
    message = ''
    @attendance = Attendance.new
    @attendance.attended_event_id = params['event_id']
    @attendance.user_attended_id = current_user.id
    invitation = Invitation.find(params['invitation_id'])
    if @attendance.save
      invitation.update({ status: true })
      message = 'Invitation accepted!!'
    else
      message = 'Invitation Not accepted!!'
    end
    flash[:notice] = message
    redirect_to events_path
  end
end
