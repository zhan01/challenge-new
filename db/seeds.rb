# seed users
user = {}

ActiveRecord::Base.transaction do
	30.times do
		user['first_name'] = Faker::Name.first_name 
		user['last_name'] = Faker::Name.last_name
		user['username'] = user['first_name'] + "-" user['last_name']
		user['email'] = Faker::Internet.email
		user['password'] = "abcd1234"
		user['country'] = ['Australia', 'New Zealand', 'Russia', 'Kazakhstan', 'USA', 'UK'].sample
		user['newsletter'] = ['true', 'false'].sample
		user['role'] = rand(0..2)
		user['avatar'] = "/a" + rand(0..5).sample + ".png"
		User.create(user)
	end
end 

# Seed challenge
challenge = {}
user_ids = []
User.all.each { |user| user_ids << user.id }

ActiveRecord::Base.transaction do
	50.times do 
		challenge['title'] = Faker::Hipster.sentence(4).gsub(".", "")
		challenge['description'] = Faker::Hipster.paragraph(rand(3..10)) + "<br><br>" + Faker::Hipster.paragraph(rand(6..15)) + "<br><br>" + Faker::Hipster.paragraph(rand(6..15)) + "<br><br>" + Faker::Hipster.paragraph(rand(6..15)) + "<br><br>" + Faker::Hipster.paragraph(rand(6..15)) + "<br><br>" + Faker::Hipster.paragraph(rand(6..15))
		challenge['deadline'] = Faker::Time.between(2.weeks.ago, Time.now).to_date
		challenge['user_id'] = user_ids.sample
		challenge['before_photo'] = "/p" + rand(0..5).sample + ".jpg"
		challenge['before_video'] = ['https://www.youtube.com/watch?v=xbextU3B0iU', 'https://www.youtube.com/watch?v=41N6bKO-NVI', 'https://www.youtube.com/watch?v=TlQ8txalLYg', 'https://www.youtube.com/watch?v=BepquqC5vEs', 'https://www.youtube.com/watch?v=1J0hTpLO0MU', 'https://www.youtube.com/watch?v=3WDMMALZGDk'].sample
		challenge['after_photo'] = "/p" + rand(0..5).sample + ".jpg"
		challenge['after_video'] = ['https://www.youtube.com/watch?v=6KgESKpLwSo', 'https://www.youtube.com/watch?v=Rvv6In0p8Hc', 'https://www.youtube.com/watch?v=Ogb09iFb1nQ', 'https://www.youtube.com/watch?v=4lohNIt6frk', 'https://www.youtube.com/watch?v=oA6w3tcpF3k'].sample
		challenge['newsletter'] = [true, false].sample
		challenge['views'] = rand(500..5000)
		Challenge.create(challenge)
	end
end