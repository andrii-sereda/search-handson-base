json.array! @instance_types do |it|
  json.extract! it, :name, :description, :cpus, :cpu_cores, :memory_mb, :storage_gb,
                :price_cents, :ssd
  json.resource it.resource.name
  json.price it.price_formatted
end
