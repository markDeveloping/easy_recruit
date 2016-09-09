# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Jobs = Job.create([{title: 'Business Analyst', jobDescription: "This is all about the job and what you'll be working on.", personalSpec: 'These are the qualities for which you must have.', selectDetails: 'During the application stage a presentation will be required', contractType: 'Permanent', workingPattern: 'Full Time', closeDate: DateTime.new(2016, 9, 01), salaryMin: 26000, salaryMax: 34291}])
Job.create([{title: 'Commercial manager', jobDescription: "This is all about the job and what you'll be working on.", personalSpec: 'These are the qualities for which you must have.', selectDetails: 'During the application stage a presentation will be required', contractType: 'Permanent', workingPattern: 'Part Time', closeDate: DateTime.new(2016, 9, 01), salaryMin: 26000, salaryMax: 31291}])
Job.create([{title: 'Front-end developer', jobDescription: "This is all about the job and what you'll be working on.", personalSpec: 'These are the qualities for which you must have.', selectDetails: 'During the application stage a presentation will be required', contractType: 'Permanent', workingPattern: 'Full Time', closeDate: DateTime.new(2016, 9, 01), salaryMin: 26000, salaryMax: 24291}])