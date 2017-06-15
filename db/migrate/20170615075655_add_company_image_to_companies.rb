class AddCompanyImageToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :company_image, :string
  end
end
