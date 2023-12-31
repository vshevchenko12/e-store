# frozen_string_literal: true

class PaintingsController < ApplicationController
  before_action :set_painting, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[show index]
  before_action :correct_user, only: %i[new edit update destroy]

  # GET /paintings or /paintings.json
  def index
    @paintings = Painting.all.order('created_at DESC')
  end

  # GET /paintings/1 or /paintings/1.json
  def show; end

  # GET /paintings/new
  def new
    @painting = current_user.paintings.build
  end

  # GET /paintings/1/edit
  def edit; end

  # POST /paintings or /paintings.json
  def create
    @painting = current_user.paintings.build(painting_params)

    respond_to do |format|
      if @painting.save
        format.html { redirect_to painting_url(@painting), notice: 'Painting was successfully created.' }
        format.json { render :show, status: :created, location: @painting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @painting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paintings/1 or /paintings/1.json
  def update
    respond_to do |format|
      if @painting.update(painting_params)
        format.html { redirect_to painting_url(@painting), notice: 'Painting was successfully updated.' }
        format.json { render :show, status: :ok, location: @painting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @painting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paintings/1 or /paintings/1.json
  def destroy
    @painting.destroy

    respond_to do |format|
      format.html { redirect_to paintings_url, notice: 'Painting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def correct_user
    @check_point = current_user.paintings.find_by(user_id: 1)
    redirect_to paintings_path, notice: 'Not Authorized To Do This!' if @check_point.nil?
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_painting
    @painting = Painting.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def painting_params
    params.require(:painting).permit(:title, :description, :price, :size, :materials, :image)
  end
end
