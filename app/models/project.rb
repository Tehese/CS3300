class Project < ApplicationRecord
    #Validates user id associated with the project
    validates_presence_of :title, :description
end
