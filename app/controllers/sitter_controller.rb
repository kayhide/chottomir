class SitterController < ApplicationController
  before_action :authenticate!

  def authenticate!
    session[:current_user_id] = User.pinoko.id
  end
end
