class Ps5Controller < ApplicationController
  before_action :authenticate_user!, only: [:drone_registration, :drone_list, :drone_create, :users_list]
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

  def drone_list
    user = current_user
    @drones = Drone.where(:user => user)
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



end
