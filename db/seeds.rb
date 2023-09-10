# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#departments
@department1 = Department.create!(name: 'Accounting', floor: 1)
@department2 = Department.create!(name: "Development", floor: 2)
@department3 = Department.create!(name: "Human Resources", floor: 3)

#employees
@Antoine = Employee.create!(name: "Antoine", level: 1, department_id: @department2.id)
@Samantha = Employee.create!(name: "Samantha", level: 2, department_id: @department2.id)
@Eric = Employee.create!(name: "Eric", level: 2, department_id: @department1.id)
@Jenny = Employee.create!(name: "Jenny", level: 3 , department_id: @department1.id)
@Marge = Employee.create!(name: "Marge", level: 1, department_id: @department3.id)
@Homer = Employee.create!(name: "Homer", level: 2, department_id: @department3.id)

#tickets
@ticket1 = Ticket.create!(subject: "Fix Accounting", age: 3)
@ticket2 = Ticket.create!(subject: "Fix Development", age: 2)
@ticket3 = Ticket.create!(subject: "Fix Human Resources", age: 1)
