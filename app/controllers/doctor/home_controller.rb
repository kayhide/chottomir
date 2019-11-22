class Doctor::HomeController < DoctorController
  def show
    @helpers = [User.pinoko]
    @incidents = Incident.order(id: :desc)
  end
end
