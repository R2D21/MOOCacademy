require "faker"
15.times do
	new_course = Course.create(
		title: Faker::DragonBall.character,
		content: Faker::ChuckNorris.fact
	)

	lessons = Lesson.create(
		title: Faker::MostInterestingManInTheWorld.quote,
		body: Faker::DrWho.catch_phrase,
		course_id: rand((Course.first.id)..(Course.last.id))
	)
end
