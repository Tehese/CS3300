require "rails_helper"

#Verifying HTTP Method in order to get a correct address
RSpec.describe ProjectsController, type: :controller do
  context "GET #index" do
    it "returns a success response" do
      get :index
      # expect(response.success).to eq(true)
      expect(response).to be_success
    end
  end

  #Creating a new project with a title and Description, and then verifying the information inside is the same as what was passed. 
  context "GET #show" do
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :show, params: { id: project }
      expect(response).to be_success
    end
  end
end