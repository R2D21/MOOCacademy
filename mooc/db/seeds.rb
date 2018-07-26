require "faker"
15.times do # créee 15 nouveaux cours
	new_course = Course.create(
		title: Faker::DragonBall.character,
		content: Faker::ChuckNorris.fact
	)

	lessons = Lesson.create( # crée 15 nouvelles leçons
		title: Faker::MostInterestingManInTheWorld.quote,
		body: Faker::DrWho.catch_phrase,
		course_id: rand((Course.first.id)..(Course.last.id))
	)
end
