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
			{ url: 'chrispipes-1.jpg' },
			{ url: 'chrispipes-2.jpg' },
			{ url: 'chrispipes-3.jpg' }
		]
	},
	{
		name: 'Example Pipe Dos',
		sides_shot: 3,
		images_attributes: [
			{ url: 'chrispipes-4.jpg' },
			{ url: 'chrispipes-5.jpg' },
			{ url: 'chrispipes-6.jpg' }	
		]
	},
	{
		name: 'Example Pipe Tres',
		sides_shot: 3,
		images_attributes: [
			{ url: 'chrispipes-7.jpg' },
			{ url: 'chrispipes-8.jpg' },
			{ url: 'chrispipes-9.jpg' }	
		]	
	},
	{
		name: 'Example Pipe Cuatro',
		sides_shot: 3,
		images_attributes: [
			{ url: 'chrispipes-10.jpg' },
			{ url: 'chrispipes-11.jpg' }
		]		
	},
	{
		name: 'Example Pipe Cinco',
		sides_shot: 9,
		images_attributes: [
			{ url: 'tyn-1.jpg' },
			{ url: 'tyn-2.jpg' },
			{ url: 'tyn-3.jpg' },
			{ url: 'tyn-4.jpg' },
			{ url: 'tyn-5.jpg' },
			{ url: 'tyn-6.jpg' },
			{ url: 'tyn-7.jpg' }
		]	
	},
	{
		name: 'Example Pipe Seis',
		sides_shot: 3,
		images_attributes: [
			{ url: 'tynn-01.jpg' },
			{ url: 'tynn-02.jpg' },
			{ url: 'tynn-03.jpg' },
			{ url: 'tynn-04.jpg' },
			{ url: 'tynn-05.jpg' },
			{ url: 'tynn-06.jpg' },
			{ url: 'tynn-07.jpg' }
		]	
	},
	{
		name: 'Example Pipe Siete',
		sides_shot: 9
	},
	{
		name: 'Example Pipe Ocho',
		sides_shot: 3
	},
])