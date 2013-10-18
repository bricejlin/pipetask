# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!([
	{
		first_name: 'Brice',
		last_name: 'Lin',
		email: 'bricejlin@gmail.com',
		password: 'foo',
		password_confirmation: 'foo'
	}
])

Pipe.create!([
	{
		name: 'Example Pipe Uno',
		sides_shot: 3,
		images_attributes: [
			{ url: 'pipe-46.jpg' },
			{ url: 'pipe-47.jpg' },
			{ url: 'pipe-48.jpg' }
		]
	},
	{
		name: 'Example Pipe Dos',
		sides_shot: 3,
		images_attributes: [
			{ url: 'pipe-49.jpg' },
			{ url: 'pipe-50.jpg' },
			{ url: 'pipe-51.jpg' }	
		]
	},
	{
		name: 'Example Pipe Tres',
		sides_shot: 3,
		images_attributes: [
			{ url: 'pipe-83.jpg' },
			{ url: 'pipe-84.jpg' },
			{ url: 'pipe-85.jpg' }	
		]	
	},
	{
		name: 'Example Pipe Cuatro',
		sides_shot: 3,
		images_attributes: [
			{ url: 'pipe-90.jpg' },
			{ url: 'pipe-91.jpg' }
		]		
	},
	{
		name: 'Example Pipe Cinco',
		sides_shot: 9,
		images_attributes: [
			{ url: 'a_tynnubill_1-01.jpg' },
			{ url: 'a_tynnubill_1-02.jpg' },
			{ url: 'a_tynnubill_1-03.jpg' },
			{ url: 'a_tynnubill_1-04.jpg' },
			{ url: 'a_tynnubill_1-05.jpg' },
			{ url: 'a_tynnubill_1-06.jpg' },
			{ url: 'a_tynnubill_1-07.jpg' }
		]	
	},
	{
		name: 'Example Pipe Seis',
		sides_shot: 3,
		images_attributes: [
			{ url: 'pipe-91.jpg' },
			{ url: 'pipe-92.jpg' },
			{ url: 'pipe-93.jpg' },
			{ url: 'pipe-94.jpg' },
			{ url: 'pipe-95.jpg' },
			{ url: 'pipe-96.jpg' },
			{ url: 'pipe-97.jpg' }
		]	
	}
])