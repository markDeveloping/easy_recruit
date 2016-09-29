# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Jobs = Job.create([{title: 'Business Analyst', jobDescription: "This is all about the job and what you'll be working on.", personalSpec: 'These are the qualities for which you must have.', selectDetails: 'During the application stage a presentation will be required', contractType: 'Permanent', workingPattern: 'Full Time', salaryMin: 26000, salaryMax: 34291}])
Job.create([{title: 'Commercial manager', jobDescription: "This is all about the job and what you'll be working on.", personalSpec: 'These are the qualities for which you must have.', selectDetails: 'During the application stage a presentation will be required', contractType: 'Permanent', workingPattern: 'Part Time', salaryMin: 26000, salaryMax: 31291}])
Job.create([{title: 'Front-end developer', jobDescription: "This is all about the job and what you'll be working on.", personalSpec: 'These are the qualities for which you must have.', selectDetails: 'During the application stage a presentation will be required', contractType: 'Permanent', workingPattern: 'Full Time', salaryMin: 26000, salaryMax: 24291}])

Departments = Department.create([{name: "HM Revenue and Customs",logo: "tbc"}])
Department.create([{name: "Department for Work and Pensions",logo: "tbc"}])
Department.create([{name: "Home Office",logo: "tbc"}])
Department.create([{name: "Ministry of Defence",logo: "tbc"}])

# Users = User.create([{firstname: "Mark", lastname:"williams", email: "mark", password: "mark", department_id: 1, activated: true, activated_at: Time.zone.now}])

Contracts = Contract.create([{contract: 'Permanent'}])
Contract.create([{contract: 'Temporary'}])
Contract.create([{contract: 'Fixed Term Appointment'}])
Contract.create([{contract: 'Loan'}])

Work_patterns = WorkPattern.create([{working_pattern: 'Full Time'}])
WorkPattern.create([{working_pattern: 'Part Time'}])
WorkPattern.create([{working_pattern: 'Job Share'}])
WorkPattern.create([{working_pattern: 'Flexible Working'}])