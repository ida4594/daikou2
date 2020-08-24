class AddCompanyIdToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :company_id, :integer
  end
end
