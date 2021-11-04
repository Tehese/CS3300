require 'rails_helper'

#This specific method is creating a new project with the a title before each scenario listed below.
RSpec.feature "Projects", type: :feature do   #This line specifically looking for a file in spec/feature/projects_spec.sb
  context "Create new project" do
    before(:each) do
      visit new_project_path
      within("form") do
        fill_in "Title", with: "Test title"
      end
    end

    
    #This scenario adds a description to the description space and then makes sure the webpage outputs correctly after it creates the project 
    scenario "should be successful" do
      fill_in "Description", with: "Test description"
      click_button "Create Project"
      expect(page).to have_content("Project was successfully created")
    end

    #Similiar to the last one however it is not adding a description in and making sure that the output of the webpage requires a description
    scenario "should fail" do
      click_button "Create Project"
      expect(page).to have_content("Description can't be blank")
    end
  end

  #This method is creating a new project and adding a title and description to satisfy the requirements for the following tests.
  context "Update project" do
    let(:project) { Project.create(title: "Test title", description: "Test content") }
    before(:each) do
      visit edit_project_path(project)
    end

    #This scenario should fill the form in with a new description and then hit update project. The page should output Project was successfully updated. 
    scenario "should be successful" do
      within("form") do
        fill_in "Description", with: "New description content"
      end
      click_button "Update Project"
      expect(page).to have_content("Project was successfully updated")
    end

    #This scenario should not put any input within the description on the form and then fail.
    scenario "should fail" do
      within("form") do
        fill_in "Description", with: ""
      end
      click_button "Update Project"
      expect(page).to have_content("Description can't be blank")
    end
  end

  #This test creates a new project with a title and description to fulful the requirements, and then the project will be deleted, and it will verify that the total amount of projects went down.
  context "Remove existing project" do
    let!(:project) { Project.create(title: "Test title", description: "Test content") }
    scenario "remove project" do
      visit projects_path
      click_link "Destroy"
      expect(page).to have_content("Project was successfully destroyed")
      expect(Project.count).to eq(0)
    end
  end
end