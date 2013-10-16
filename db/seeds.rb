# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pipe.create!([
	{
		name: 'Example Pipe Uno',
		sides_shot: 3,
		images_attributes: [
			{ url: 'pipe-1.jpg' },
			{ url: 'pipe-2.jpg' },
			{ url: 'pipe-3.jpg' }
		]
	},
	{
		name: 'Example Pipe Dos',
		sides_shot: 3,
		images_attributes: [
			{ url: 'pipe-4.jpg' },
			{ url: 'pipe-5.jpg' },
			{ url: 'pipe-6.jpg' }	
		]
	},
	{
		name: 'Example Pipe Tres',
		sides_shot: 3,
		images_attributes: [
			{ url: 'pipe-7.jpg' },
			{ url: 'pipe-8.jpg' },
			{ url: 'pipe-9.jpg' }	
		]	
	},
	{
		name: 'Example Pipe Cuatro',
		sides_shot: 3,
		images_attributes: [
			{ url: 'pipe-10.jpg' },
			{ url: 'pipe-11.jpg' }
		]		
	},
	{
		name: 'Example Pipe Cinco',
		sides_shot: 9,
		images_attributes: [
			{ url: 'pipe-1.jpg' },
			{ url: 'pipe-2.jpg' },
			{ url: 'pipe-3.jpg' },
			{ url: 'pipe-4.jpg' },
			{ url: 'pipe-5.jpg' },
			{ url: 'pipe-6.jpg' },
			{ url: 'pipe-7.jpg' }
		]	
	},
	{
		name: 'Example Pipe Seis',
		sides_shot: 3,
		images_attributes: [
			{ url: 'pipe-11.jpg' },
			{ url: 'pipe-12.jpg' },
			{ url: 'pipe-13.jpg' },
			{ url: 'pipe-14.jpg' },
			{ url: 'pipe-15.jpg' },
			{ url: 'pipe-16.jpg' },
			{ url: 'pipe-17.jpg' }
		]	
	}
])