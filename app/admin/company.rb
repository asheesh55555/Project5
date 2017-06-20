ActiveAdmin.register Company do

	permit_params :name, :country_id, :state_id,:city_id,:postcode, :start_date,:active

end
