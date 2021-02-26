class InformationLocation < ApplicationRecord
  belongs_to :information, optional: true
  belongs_to :location, optional: true

  
end
