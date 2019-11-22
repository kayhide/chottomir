class Doctor::IncidentsController < DoctorController
  before_action :set_helper
  before_action :set_incident, only: [:show, :edit, :update, :destroy]

  def index
    @incidents = Incident.order(id: :desc)
  end

  def show
  end

  def new
    @incident = Incident.new
    @incident.category = Category.find_by(text: params[:category])
  end

  def edit
  end

  def create
    @incident = Incident.new(incident_params)
    @incident.user_id = current_user_id

    if @incident.save
      redirect_to [:doctor, :incidents], notice: 'Incident was successfully created.'
    else
      render :new
    end
  end

  def update
    if @incident.update(incident_params)
      redirect_to [:doctor, :incidents], notice: 'Incident was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @incident.destroy
    redirect_to [:doctor, :incidents], notice: 'Incident was successfully destroyed.'
  end

  private

  def set_helper
    @helper = User.find_by(id: params[:helper_id])
  end

  def set_incident
    @incident = Incident.find(params[:id])
  end

  def incident_params
    params.require(:incident).permit(:category_id, :note)
  end
end
