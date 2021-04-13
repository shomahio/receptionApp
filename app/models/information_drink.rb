class InformationDrink < ApplicationRecord
  belongs_to :information, optional: true
  belongs_to :drink, optional: true

end
