class SmallpostsController < ApplicationController
  before_action :set_smallpost, only: %i[ show edit update destroy ]

  # GET /smallposts or /smallposts.json
  def index
    @smallposts = Smallpost.content_order(params[:order])
  end

  # GET /smallposts/1 or /smallposts/1.json
  def show
  end

  # GET /smallposts/new
  def new
    @smallpost = Smallpost.new
  end

  # GET /smallposts/1/edit
  def edit
  end

  # POST /smallposts or /smallposts.json
  def create
    @smallpost = Smallpost.new(smallpost_params)

    respond_to do |format|
      if @smallpost.save
        format.html { redirect_to @smallpost, notice: "Smallpost was successfully created." }
        format.json { render :show, status: :created, location: @smallpost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @smallpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smallposts/1 or /smallposts/1.json
  def update
    respond_to do |format|
      if @smallpost.update(smallpost_params)
        format.html { redirect_to @smallpost, notice: "Smallpost was successfully updated." }
        format.json { render :show, status: :ok, location: @smallpost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @smallpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smallposts/1 or /smallposts/1.json
  def destroy
    @smallpost.destroy!

    respond_to do |format|
      format.html { redirect_to smallposts_path, status: :see_other, notice: "Smallpost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smallpost
      @smallpost = Smallpost.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def smallpost_params
      params.expect(smallpost: [ :content, :client_id ])
    end
end
