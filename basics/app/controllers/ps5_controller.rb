class Ps5Controller < ApplicationController
  before_action :authenticate_user!, only: [:drone_registration, :drone_list, :drone_create, :users_list, :ban_user]
  def index
  end

  def documentation
  end

  def versions
  end

  def flow_control
  end

  def users_list
    if current_user.admin
      @users = User.all
    else
      redirect_to ps5_drone_list_path, alert: "You need admin privileges."
    end
  end

  def ban_user
    @user = User.find(params[:id])
    # @user.banned = true

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to ps5_users_list_path, notice: 'User ban state has been updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def drone_list
    user = current_user
    if user.admin
      @drones = Drone.all
    else
      @drones = Drone.where(:user => user)
    end

  end

  def drone_registration
    @drone = Drone.new
  end

  def drone_create
    @drone = Drone.new(drone_params)
    @drone.user = current_user
    @drone.status = "Offline"

    if @drone.save
      redirect_to ps5_drone_list_path, alert: "Drone created successfully."
    else
      redirect_to drone_registration_path, alert: "Error registering drone."
    end
  end

  private
  def drone_params
    params.permit(:name)
  end

  def user_params
    params.permit(:banned)
  end



end
