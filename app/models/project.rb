class Project < ApplicationRecord
    # Requires title and description
    validates_presence_of :title, :description
end
