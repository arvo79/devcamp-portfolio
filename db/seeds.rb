3.times do |topic|
	Topic.create!(title: "Topic No #{topic+1}")
end

puts "3 topics created"

10.times do |blog|
	Blog.create!(
		title: "Blog No #{blog+1}",
		body: "Content No #{blog+1}",
		topic_id: Topic.last.id
	)
end

puts "10 blogs created"

5.times do |skill|
	Skill.create!(
		title: "Skill No #{skill+1}",
		percent_utilized: (skill+1)*10,
		badge: "http://placehold.it/75x75"
	)
end

puts "5 skills created"

9.times do |portfolio|
	Portfolio.create!(
		title: "Portfolio No #{portfolio+1}",
		subtitle: "Subtitle No #{portfolio+1}",
		body: "Description No #{portfolio+1}",
		main_image: "http://placehold.it/300x200",
		thumb_image: "http://placehold.it/75x50"
	)
end

puts "9 portfolios created"