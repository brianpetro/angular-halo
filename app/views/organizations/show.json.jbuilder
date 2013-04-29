json.extract! @organization, :data, :created_at, :updated_at
json.projects @projects.each do |p|
	json.id p.id
	json.name p.name
end
