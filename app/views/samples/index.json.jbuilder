json.array!(@samples) do |sample|
  json.extract! sample, :id, :int_attr, :str_attr
  json.url sample_url(sample, format: :json)
end
