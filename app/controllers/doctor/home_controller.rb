class Doctor::HomeController < DoctorController
  def show
    @sitters = [User.pinoko].map { |u| u.becomes Sitter }
    @incidents = Incident.order(id: :desc)
  end
end
