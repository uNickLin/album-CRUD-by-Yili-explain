# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Photo.destroy_all

photo_list = [
	{
		"title" => "My first day!",
		"date" => "2011-02-02",
		"description" => "This is first data.",
		"file_location" => "my_photo/first.jpg"
	},
	{
		"title" => "My second day!",
		"date" => "2011-02-20",
		"description" => "This is second data.",
		"file_location" => "my_photo/2.jpg"
	},
	{
		"title" => "My third day!",
		"date" => "2011-02-23",
		"description" => "This is third data.",
		"file_location" => "my_photo/111.jpg"
	},
	{
		"title" => "My last day!",
		"date" => "2011-02-29",
		"description" => "This is last data.",
		"file_location" => "my_photo/final.jpg"
	}

]

photo_list.each do |photo|
	Photo.create(
		:title => photo["title"],
		:date => photo["date"],
		:description => photo["description"],
		:file_location => photo["file_location"]
	)

end







