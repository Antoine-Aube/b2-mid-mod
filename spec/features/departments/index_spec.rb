require 'rails_helper'

RSpec.describe 'Deparments Index' do 
  before :each do
    @department1 = Department.create!(name: 'Accounting', floor: 1)
    @department2 = Department.create!(name: "Development", floor: 2)
    @department3 = Department.create!(name: "Human Resources", floor: 3)
    @Antoine = @department2.employees.create!(name: "Antoine", level: 1)
    @Samantha = @department2.employees.create!(name: "Samantha", level: 2)
    @Eric = @department1.employees.create!(name: "Eric", level: 2)
    @Jenny = @department1.employees.create!(name: "Jenny", level: 3)
    @Marge = @department3.employees.create!(name: "Marge", level: 1)
    @Homer = @department3.employees.create!(name: "Homer", level: 2)
  end

  describe "index" do
    it "displays all deparment names with corresponding floor and all employees within" do 
      visit "/departments"

      within "#department-#{@department1.id}" do
        expect(page).to have_content(@department1.name)
        expect(page).to have_content(@department1.floor)
        expect(page).to have_content(@Eric.name)
        expect(page).to have_content(@Jenny.name)
      end
    end
  end
end