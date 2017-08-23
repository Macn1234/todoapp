class Todo1sController < ApplicationController
  before_action :set_todo1, only: [:show, :edit, :update, :destroy]

  # GET /todo1s
  # GET /todo1s.json
  def index
    @todo1s = Todo1.all
  end

  # GET /todo1s/1
  # GET /todo1s/1.json
  def show
  end

  # GET /todo1s/new
  def new
    @todo1 = Todo1.new
  end

  # GET /todo1s/1/edit
  def edit
  end

  # POST /todo1s
  # POST /todo1s.json
  def create
    @todo1 = Todo1.new(todo1_params)

    respond_to do |format|
      if @todo1.save
        format.html { redirect_to @todo1, notice: 'Todo1 was successfully created.' }
        format.json { render :show, status: :created, location: @todo1 }
      else
        format.html { render :new }
        format.json { render json: @todo1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo1s/1
  # PATCH/PUT /todo1s/1.json
  def update
    respond_to do |format|
      if @todo1.update(todo1_params)
        format.html { redirect_to @todo1, notice: 'Todo1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo1 }
      else
        format.html { render :edit }
        format.json { render json: @todo1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo1s/1
  # DELETE /todo1s/1.json
  def destroy
    @todo1.destroy
    respond_to do |format|
      format.html { redirect_to todo1s_url, notice: 'Todo1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo1
      @todo1 = Todo1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo1_params
      params.require(:todo1).permit(:title)
    end
end
