class VersionsController < ApplicationController
  before_action :set_version, only: [:show, :edit, :update, :destroy]

  # GET /versions
  def index
    @versions = Version.all
  end

  # GET /versions/1
  def show
  end

  # GET /versions/new
  def new
    @version = Version.new
  end

  # GET /versions/1/edit
  def edit
  end

  # POST /versions
  def create
    @version = Version.new(version_params)

    if @version.save
      redirect_to @version, notice: 'Version was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /versions/1
  def update
    if @version.update(version_params)
      redirect_to @version, notice: 'Version was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /versions/1
  def destroy
    @version.destroy
    redirect_to versions_url, notice: 'Version was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_version
      @version = Version.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def version_params
      params.require(:version).permit(:major, :minor, :patch, :value, :created)
    end
end
