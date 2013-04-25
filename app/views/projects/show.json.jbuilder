json.extract! @project, :details, :updated_at
json.entries @entries.each do |e|
	json.id e.id
	json.title e.title
	json.summary e.summary
end
