class AttendancesController < ApplicationController
    def create 
        @attendance = Attendance.new
        @attendance.attended_event_id = params["event_id"]
        @attendance.user_attended_id = current_user.id
        invitation = Invitation.find(params["invitation_id"])
        if @attendance.save           
            invitation.update({status: true})
            flash[:notice] = "Invitation accepted!!"
            redirect_to root_path
        else
            flash[:notice] = "Invitation Not accepted!!"
            redirect_to root_path
        end
    end
end
