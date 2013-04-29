json.extract! @entry, :data, :created_at, :updated_at
json.notes @notes.each do |note|
	json.id note.id
	json.tldr note.tldr
	json.concern note.concern
	json.author note.author
end
