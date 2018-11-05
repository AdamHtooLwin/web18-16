class Ps5Controller < ApplicationController
  def index
  end

  def documentation
  end

  def versions
  end

  def flow_control
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
      redirect_to new_user_path, alert: "Error creating user."
    end
  end

  private
  def drone_params
    params.permit(:name)
  end



end
