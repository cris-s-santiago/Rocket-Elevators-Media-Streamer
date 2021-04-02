class Employee < ApplicationRecord
  belongs_to :user
  has_many :batteries, dependent: :destroy
  has_many :interventions, dependent: :destroy

  #TDD
  validates_presence_of :first_name, :last_name, :title, :email

  def full_name
    "#{last_name} #{first_name} "
  end
end
