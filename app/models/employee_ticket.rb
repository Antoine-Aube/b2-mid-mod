class EmployeeTicket < ApplicationRecord
  belongs_to :employee
  belongs_to :ticket
  validates :employee_id, presence: true
  validates :ticket_id, presence: true
end