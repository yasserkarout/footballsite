class AttendanceListsController < ApplicationController
  before_action :set_attendance_list, only: [:show, :edit, :update, :destroy]

  # GET /attendance_lists
  # GET /attendance_lists.json
  def index
    @attendance_lists = AttendanceList.all
  end

  # GET /attendance_lists/1
  # GET /attendance_lists/1.json
  def show
  end

  def add_user
    

    AttendanceListsUsers.create(attendance_list_id: params[:id], user_id: current_user.id)
    #create view for add_user to redirect to...

  end

  # GET /attendance_lists/new
  def new
    @attendance_list = AttendanceList.new
  end

  # GET /attendance_lists/1/edit
  def edit
  end

  # POST /attendance_lists
  # POST /attendance_lists.json
  def create
    @attendance_list = AttendanceList.new(attendance_list_params)

    respond_to do |format|
      if @attendance_list.save
        format.html { redirect_to @attendance_list, notice: 'Attendance list was successfully created.' }
        format.json { render action: 'show', status: :created, location: @attendance_list }
      else
        format.html { render action: 'new' }
        format.json { render json: @attendance_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attendance_lists/1
  # PATCH/PUT /attendance_lists/1.json
  def update


    respond_to do |format|
      if @attendance_list.update(attendance_list_params)
        format.html { redirect_to @attendance_list, notice: 'Attendance list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @attendance_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendance_lists/1
  # DELETE /attendance_lists/1.json
  def destroy
    @attendance_list.destroy
    respond_to do |format|
      format.html { redirect_to attendance_lists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendance_list
      @attendance_list = AttendanceList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attendance_list_params
      params[:attendance_list]
    end
end
