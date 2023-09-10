class Department < ApplicationRecord
  has_many :employees
  has_many :tickets, through: :employees
  validates :name, presence: true 
  validates :floor, presence: true
end