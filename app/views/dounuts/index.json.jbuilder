json.array!(@dounuts) do |dounut|
  json.extract! dounut, :id, :name, :topping, :topping, :cost, :image
  json.url dounut_url(dounut, format: :json)
end
