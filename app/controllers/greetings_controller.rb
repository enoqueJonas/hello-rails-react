class GreetingsController < ApplicationController
  before_action :set_greeting, only: %i[ show edit update destroy ]

  # GET /greetings or /greetings.json
  def index
    @greetings = Greeting.order("RANDOM()").limit(1).first
  end

  def random
    @greeting = Greeting.order("RANDOM()").limit(1).first
    render json: @greeting
  end

  # GET /greetings/1 or /greetings/1.json
  def show
    @greeting = set_greeting
    render json: @greeting
  end  

  # GET /greetings/new
  def new
    @greeting = Greeting.new
  end

  # GET /greetings/1/edit
  def edit
  end

  # POST /greetings or /greetings.json
  def create
    @greeting = Greeting.new(greeting_params)

    respond_to do |format|
      if @greeting.save
        format.html { redirect_to greeting_url(@greeting), notice: "Greeting was successfully created." }
        format.json { render :show, status: :created, location: @greeting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @greeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /greetings/1 or /greetings/1.json
  def update
    respond_to do |format|
      if @greeting.update(greeting_params)
        format.html { redirect_to greeting_url(@greeting), notice: "Greeting was successfully updated." }
        format.json { render :show, status: :ok, location: @greeting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @greeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /greetings/1 or /greetings/1.json
  def destroy
    @greeting.destroy

    respond_to do |format|
      format.html { redirect_to greetings_url, notice: "Greeting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_greeting
      def set_greeting
        if params[:id] == "random"
          @greeting = Greeting.order("RANDOM()").first
        else
          @greeting = Greeting.find(params[:id])
        end
      end
      @greeting
    end

    # Only allow a list of trusted parameters through.
    def greeting_params
      params.require(:greeting).permit(:greeting)
    end
end
