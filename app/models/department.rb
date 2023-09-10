class Department < ApplicationRecord
  has_many :employees
  has_many :tickets, through: :employees
end