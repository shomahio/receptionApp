class InformationMusic < ApplicationRecord
  belongs_to :information, optional: true
  belongs_to :music, optional: true

  
end
