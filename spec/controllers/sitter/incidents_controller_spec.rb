require 'rails_helper'

RSpec.describe Sitter::IncidentsController, type: :controller do
  authenticate_user

  let(:valid_attributes) {
    {
      category_id: Category.first.id,
    }
  }

  let(:invalid_attributes) {
    {
      category_id: 0
    }
  }

  describe "GET #index" do
    it "returns a success response" do
      create :incident, user: current_user
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      incident = create :incident, user: current_user
      get :show, params: {id: incident.id}
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      incident = create :incident, user: current_user
      get :edit, params: {id: incident.id}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Incident" do
        expect {
          post :create, params: {incident: valid_attributes}
        }.to change(Incident, :count).by(1)
      end

      it "redirects to the incident list" do
        post :create, params: {incident: valid_attributes}
        expect(response).to redirect_to([:sitter, :incidents])
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {incident: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_category) { Category.last }
      let(:new_attributes) {
        {
          category_id: new_category.id
        }
      }

      it "updates the requested incident" do
        incident = create :incident, user: current_user
        put :update, params: {id: incident.id, incident: new_attributes}
        incident.reload
        expect(incident.category_id).to eq new_category.id
      end

      it "redirects to the incident list" do
        incident = create :incident, user: current_user
        put :update, params: {id: incident.id, incident: valid_attributes}
        expect(response).to redirect_to([:sitter, :incidents])
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        incident = create :incident, user: current_user
        put :update, params: {id: incident.id, incident: invalid_attributes}
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested incident" do
      incident = create :incident, user: current_user
      expect {
        delete :destroy, params: {id: incident.id}
      }.to change(Incident, :count).by(-1)
    end

    it "redirects to the incidents list" do
      incident = create :incident, user: current_user
      delete :destroy, params: {id: incident.id}
      expect(response).to redirect_to([:sitter, :incidents])
    end
  end

end
