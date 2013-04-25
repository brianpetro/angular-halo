json.extract! @project, :details, :updated_at
json.entries @entries.each do |e|
	json.title e.title
end
