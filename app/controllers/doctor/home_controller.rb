class Doctor::HomeController < DoctorController
  def show
    @sitters = [User.pinoko]
    @incidents = Incident.order(id: :desc)
  end
end
