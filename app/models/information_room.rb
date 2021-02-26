class InformationRoom < ApplicationRecord
  belongs_to :information, optional: true
  belongs_to :room, optional: true

end
