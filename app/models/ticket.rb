class Ticket < ApplicationRecord
  has_many :employee_tickets
  validates :subject, presence: true
  validates :age, presence: true
end