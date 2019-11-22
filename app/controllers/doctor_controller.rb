class DoctorController < ApplicationController
  before_action :authenticate!

  def authenticate!
    session[:current_user_id] = User.kiriko.id
  end
end
