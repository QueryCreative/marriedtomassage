class AnnouncementsController < ApplicationController
  before_action :set_announcements, only: [:show, :edit, :update, :destroy]

  def index
    @announcements = Announcement.order('published_at ASC').page params[:page]
  end

  # GET /newsposts/1
  # GET /newsposts/1.json
  def show
  end

  # GET /newsposts/new
  def new
    @announcement = Announcement.new
  end

  def edit
  end

  def create
    @announcement = Announcement.new(newspost_params)

    respond_to do |format|
      if @announcement.save
        format.html { redirect_to @announcement, notice: 'Announcement was successfully created.' }
        format.json { render :show, status: :created, location: @announcement }
      else
        format.html { render :new }
        format.json { render json: @announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @announcement.update(newspost_params)
        format.html { redirect_to @announcement, notice: 'Announcement was successfully updated.' }
        format.json { render :show, status: :ok, location: @announcement }
      else
        format.html { render :edit }
        format.json { render json: @announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @announcement.destroy
    respond_to do |format|
      format.html { redirect_to announcements_url, notice: 'Announcement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_announcement
      @announcement = Announcement.find(params[:id])
    end
    def announcement_params
      params.require(:announcement).permit(:content, :user_id)
    end
end
