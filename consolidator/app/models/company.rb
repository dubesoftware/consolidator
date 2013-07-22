class Company < ActiveRecord::Base
  belongs_to :company
  has_many :companies
  validates :name, presence: true,
                    length: { minimum: 2 }
end
