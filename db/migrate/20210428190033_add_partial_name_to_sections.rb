class AddPartialNameToSections < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :partial_name, :string
  end
end
