class ConferencesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_conference, only: [:show, :edit, :update, :destroy]

  def index
    @conferences = Conference.all
  end

  def show
    @registrations = @conference.registrations
    @feedbacks = @conference.feedbacks
  end

  def new
    @conference = Conference.new
  end

  def create
    @conference = Conference.new(conference_params)
    if @conference.save
      redirect_to @conference, notice: 'Conference was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @conference.update(conference_params)
      redirect_to @conference, notice: 'Conference was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @conference.destroy
    redirect_to conferences_url, notice: 'Conference was successfully destroyed.'
  end

  private

  def set_conference
    @conference = Conference.find(params[:id])
  end

  def conference_params
    params.require(:conference).permit(:title, :description, :date)
  end
end
