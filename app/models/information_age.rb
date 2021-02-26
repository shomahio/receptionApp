class InformationAge < ApplicationRecord
  belongs_to :information, optional: true
  belongs_to :age, optional: true

  
end
