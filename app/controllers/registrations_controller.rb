class RegistrationsController < ApplicationController
  def create
    @conference = Conference.find(params[:conference_id])
    @registration = @conference.registrations.new(user: current_user)

    if @registration.save
      redirect_to @conference, notice: 'Successfully registered for the conference.'
    else
      redirect_to @conference, alert: 'Registration failed.'
    end
  end

  def destroy
    @conference = Conference.find(params[:conference_id])
    @registration = @conference.registrations.find_by(user: current_user)
    @registration.destroy

    redirect_to @conference, notice: 'Successfully unregistered from the conference.'
  end
end
