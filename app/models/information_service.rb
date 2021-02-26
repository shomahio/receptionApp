class InformationService < ApplicationRecord
  belongs_to :information, optional: true
  belongs_to :service, optional: true

end
