class ModifyToDate < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :date, :datetime
  end
end
