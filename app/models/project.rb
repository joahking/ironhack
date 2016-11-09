class Project < ApplicationRecord
  has_many :time_entries

  validates :name, presence: true
  validates :description, presence: true
end
