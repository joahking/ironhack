# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

project1 = Project.create name: 'Ironhack', description: 'Week 4 is a nice Rails week'
project1.time_entries.create hours: 1, minutes: 0, comment: 'doing an exercise', date: DateTime.yesterday
project1.time_entries.create hours: 2, minutes: 0, comment: 'associations slides', date: DateTime.tomorrow

project2 = Project.create name: 'Ironman', description: 'Robert Downey jr.'
project2.time_entries.create hours: 1, minutes: 0, comment: 'improving the shield', date: DateTime.yesterday
project2.time_entries.create hours: 1, minutes: 0, comment: 'Fighting the bad guys', date: DateTime.tomorrow

Project.create name: 'Ironwoman', description: 'oh yeah'

project3 = Project.create name: 'Irontooth', description: 'You can bite'
TimeEntry.create hours: 1, minutes: 0, comment: 'Brushing all of them', date: DateTime.now, project: project3
TimeEntry.create hours: 2, minutes: 0, comment: 'Extracting one', date: DateTime.yesterday, project: project3
TimeEntry.create hours: 3, minutes: 0, comment: 'Sharping it', date: DateTime.tomorrow, project: project3
