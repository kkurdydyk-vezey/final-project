ActiveAdmin.register Cat do

  permit_params :name, :image, :age, :colour, :breed, :price, :rescue_date, :breed_id


end
