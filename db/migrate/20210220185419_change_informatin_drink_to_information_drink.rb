class ChangeInformatinDrinkToInformationDrink < ActiveRecord::Migration[6.0]
  def change
    rename_table :informatin_drinks, :information_drinks
  end

end
