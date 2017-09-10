3.times do |topic|
	Topic.create!(title: "Topic No #{topic+1}")
end

puts "3 topics created"

10.times do |blog|
	Blog.create!(
		title: "Blog No #{blog+1}",
		body: "This is an awesome blog post which you might still get tired of after reading the same sentence over and over again. This is an awesome blog post which you might still get tired of after reading the same sentence over and over again. This is an awesome blog post which you might still get tired of after reading the same sentence over and over again. This is an awesome blog post which you might still get tired of after reading the same sentence over and over again. This is an awesome blog post which you might still get tired of after reading the same sentence over and over again. This is an awesome blog post which you might still get tired of after reading the same sentence over and over again. This is an awesome blog post which you might still get tired of after reading the same sentence over and over again. This is an awesome blog post which you might still get tired of after reading the same sentence over and over again. This is an awesome blog post which you might still get tired of after reading the same sentence over and over again.",
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
		body: "This is an awesome blog post which you might still get tired of after reading the same sentence over and over again. This is an awesome blog post which you might still get tired of after reading the same sentence over and over again. This is an awesome blog post which you might still get tired of after reading the same sentence over and over again. This is an awesome blog post which you might still get tired of after reading the same sentence over and over again. This is an awesome blog post which you might still get tired of after reading the same sentence over and over again. This is an awesome blog post which you might still get tired of after reading the same sentence over and over again. This is an awesome blog post which you might still get tired of after reading the same sentence over and over again. This is an awesome blog post which you might still get tired of after reading the same sentence over and over again. This is an awesome blog post which you might still get tired of after reading the same sentence over and over again.",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"
	)
end

puts "9 portfolios created"

3.times do |technology|
	Portfolio.find(technology+1).technologies.create!(
		name: "Technology No #{technology+1}"
	)
end

puts "3 technologies created"