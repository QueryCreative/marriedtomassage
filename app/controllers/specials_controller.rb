class SpecialsController < ApplicationController
  before_action :set_special, only: [:show, :edit, :update, :destroy]

  def index
    @specials = Special.order('published_at DESC').page params[:page]
  end

  def show
  end

  def new
    @special = Special.new
  end

  def edit
  end

  def create
    @special = Special.new(special_params)

    respond_to do |format|
      if @special.save
        format.html { redirect_to @special, notice: 'Special was successfully created.' }
        format.json { render :show, status: :created, location: @special }
      else
        format.html { render :new }
        format.json { render json: @special.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @special.update(special_params)
        format.html { redirect_to @special, notice: 'Special was successfully updated.' }
        format.json { render :show, status: :ok, location: @special }
      else
        format.html { render :edit }
        format.json { render json: @special.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @special.destroy
    respond_to do |format|
      format.html { redirect_to specials_url, notice: 'Special was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_special
      @special = Special.find(params[:id])
    end
    def special_params
      params.require(:special).permit(:content, :user_id)
    end
end
