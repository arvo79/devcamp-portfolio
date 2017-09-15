User.create!(
	email: "admin@test.com",
	password: "111111",
	password_confirmation: "111111",
	name: "Admin User",
	roles: "site_admin"
	)

puts "Admin User created"

User.create!(
	email: "test@test.com",
	password: "111111",
	password_confirmation: "111111",
	name: "Test User"
	)

puts "Test User created"

3.times do |topic|
	Topic.create!(title: "Topic No #{topic+1}")
end

puts "3 topics created"

10.times do |blog|
	Blog.create!(
		title: "Blog No #{blog+1}",
		body: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?
					On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business is will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.",
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
		body: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?
					On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business is will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.",
		main_image: File.open(File.join(Rails.root, "/app/assets/images/bottles.jpg")),
		thumb_image: File.open(File.join(Rails.root, "/app/assets/images/bottles_bw.jpg"))
	)
end

puts "9 portfolios created"

3.times do |technology|
	Portfolio.find(technology+1).technologies.create!(
		name: "Technology No #{technology+1}"
	)
end

puts "3 technologies created"