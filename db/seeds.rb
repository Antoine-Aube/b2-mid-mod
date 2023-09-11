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
# @Antoine = Employee.create!(name: "Antoine", level: 1, department_id: @department2.id)
@Antoine = @department2.employees.create!(name: "Antoine", level: 1)
@Samantha = @department2.employees.create!(name: "Samantha", level: 2)
@Eric = @department1.employees.create!(name: "Eric", level: 2)
@Jenny = @department1.employees.create!(name: "Jenny", level: 3)
@Marge = @department3.employees.create!(name: "Marge", level: 1)
@Homer = @department3.employees.create!(name: "Homer", level: 2)

#tickets
@ticket1 = Ticket.create!(subject: "Fix shopping cart", age: 3)
@ticket2 = Ticket.create!(subject: "Fix Everything", age: 2)
@ticket3 = Ticket.create!(subject: "Fix index page", age: 1)
@ticket4 = Ticket.create!(subject: "Fix homepage", age: 1)
@ticket5 = Ticket.create!(subject: "Fix Spreadsheets", age: 2)
@ticket6 = Ticket.create!(subject: "Fix Budget", age: 1)
@ticket7 = Ticket.create!(subject: "Fix Payroll", age: 1)
@ticket8 = Ticket.create!(subject: "Fix Accounting", age: 2)
@ticket9 = Ticket.create!(subject: "Fix Hiring", age: 1)
@ticket10 = Ticket.create!(subject: "Fix Firing", age: 1)
@ticket11 = Ticket.create!(subject: "Fix Benefits", age: 2)
@ticket12 = Ticket.create!(subject: "Fix Payroll", age: 9)
#employee_tickets
@employee_ticket1 = EmployeeTicket.create!(employee_id: @Antoine.id, ticket_id: @ticket1.id)
@employee_ticket2 = EmployeeTicket.create!(employee_id: @Antoine.id, ticket_id: @ticket2.id)
@employee_ticket3 = EmployeeTicket.create!(employee_id: @Samantha.id, ticket_id: @ticket3.id)  
@employee_ticket4 = EmployeeTicket.create!(employee_id: @Samantha.id, ticket_id: @ticket4.id)
@employee_ticket5 = EmployeeTicket.create!(employee_id: @Eric.id, ticket_id: @ticket5.id)
@employee_ticket6 = EmployeeTicket.create!(employee_id: @Eric.id, ticket_id: @ticket6.id)
@employee_ticket7 = EmployeeTicket.create!(employee_id: @Jenny.id, ticket_id: @ticket7.id)
@employee_ticket8 = EmployeeTicket.create!(employee_id: @Jenny.id, ticket_id: @ticket8.id)  
@employee_ticket9 = EmployeeTicket.create!(employee_id: @Marge.id, ticket_id: @ticket9.id)
@employee_ticket10 = EmployeeTicket.create!(employee_id: @Marge.id, ticket_id: @ticket10.id)
@employee_ticket11 = EmployeeTicket.create!(employee_id: @Homer.id, ticket_id: @ticket11.id)
@employee_ticket12 = EmployeeTicket.create!(employee_id: @Homer.id, ticket_id: @ticket12.id)


