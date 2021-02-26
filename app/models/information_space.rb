class InformationSpace < ApplicationRecord
  belongs_to :information, optional: true
  belongs_to :space, optional: true

end
